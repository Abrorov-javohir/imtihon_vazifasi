import 'package:imtihon_vazifasi/data/model/daromadlar.dart';
import 'package:imtihon_vazifasi/data/model/harajatlar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DaromadlarService {
  late final Database _database;
  final String _dbname = "harajatlar.uz";
  final String _dbtable = "HARAJATLAR";
  final String _dbId = "id";
  final String _dbSumma = 'summa';
  final String _dbCategory = 'category';
  final String _dbDate = 'date';
  final String _dbIzoh = 'izoh';

  Future<void> init() async {
    final folder = await getApplicationDocumentsDirectory();
    final path = "${folder.path}/${_dbname}";
    _database = await openDatabase(path, version: 2, onCreate: create);
  }

  Future<void> create(Database db, int a) async {
    final String createTable = """
Create table ${_dbtable}
${_dbId} Integer Primary key AutoIncrement
${_dbSumma} Text not null
${_dbCategory} Text not null
${_dbDate} Text not Null
${_dbIzoh} Text not null
""";
    await db.execute(createTable);
  }

  Future<List<Daromadlar>> get() async {
    final List<Daromadlar> harajatlar = [];
    final data = await _database.query(_dbtable);
    for (var index in harajatlar) {
      final daromadlarqoshish = Daromadlar(
        summa: [_dbSumma] as String,
        category: [_dbCategory] as String,
        date: [_dbDate] as DateTime,
        izoh: [_dbIzoh] as String,
        id: [_dbId] as int,
      );
      harajatlar.add(daromadlarqoshish);
    }
    return [...harajatlar];
  }

  Future<void> insert({
    required name,
    required sana,
    required summa,
    required category,
    required izoh,
  }) async {
    await _database.insert(_dbtable, {
      _dbname: name,
      _dbDate: sana,
      _dbCategory: category,
      _dbIzoh: izoh,
      _dbSumma: summa
    });
  }

  Future<void> delete() async {
    await _database.delete(_dbtable, where: "id = ${_dbId}");
  }

  Future<void> update({
    required name,
    required sana,
    required summa,
  }) async {
    await _database.update(
      _dbtable,
      {_dbname: name, _dbDate: sana, _dbSumma: summa},
    );
  }
}
