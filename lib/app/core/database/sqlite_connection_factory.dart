import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart' as path;
import 'package:sqflite/sqflite.dart' as sql;
import 'sqlite_migration_factory.dart';
import 'package:synchronized/synchronized.dart';

class SqliteConnectionFactory {
  static const _dbVersion = 1;
  static const _dbName = 'listaDeCompras.db';

  Database? _db;
  final _lock = Lock();
  static SqliteConnectionFactory? _instance;

  SqliteConnectionFactory._internal();

  factory SqliteConnectionFactory() {
    _instance ??= SqliteConnectionFactory._internal();
    return _instance!;
  }

  Future<Database> openConnection() async {
    if (_db == null) {
      await _lock.synchronized(() async {
        var dataBasePath = await sql.getDatabasesPath();
        var dataBasePathFinal = path.join(dataBasePath, _dbName);

        _db ??= await sql.openDatabase(
          dataBasePathFinal,
          version: _dbVersion,
          onConfigure: onConfigure,
          onCreate: onCreate,
          onUpgrade: onUpgrade,
          onDowngrade: onDowngrade,
        );
      });
    }
    return _db!;
  }

  void closeConnection() {
    _db?.close();
    _db = null;
  }

  Future<void> onConfigure(Database db) async {
    await db.execute('PRAGMA foreign_keys = ON');
  }

  Future<void> onCreate(Database db, int version) async {
    final batch = db.batch();

    final migrations = SqliteMigrationFactory().getCreateMigration();
    for (var migration in migrations) {
      migration.create(batch);
    }

    batch.commit();
  }

  Future<void> onUpgrade(Database db, int oldVersion, int newVersion) async {
    final batch = db.batch();

    final migrations = SqliteMigrationFactory().getUpgradeMigration(oldVersion);
    for (var migration in migrations) {
      migration.update(batch);
    }

    batch.commit();
  }

  Future<void> onDowngrade(Database db, int oldVersion, int newVersion) async {}
}
