import 'package:nosso_primeiro_projeto/components/task.dart';
import 'package:nosso_primeiro_projeto/data/database.dart';
import 'package:sqflite/sqflite.dart';

class TaskDao {
  static const String tableSql = 'CREATE TABLE $_tablename('
      '$_name TEXT, '
      '$_difficulty INTEGER, '
      '$_image TEXT)';

  static const String _tablename = 'taskTable';
  static const String _name = 'name';
  static const String _difficulty = 'difficulty';
  static const String _image = 'image';

  save(Task tarefa) async {}
  Future<List<Task>> findAll() async{
    print('Acessando o findAll: ');
    final Database bancoDeDados = await getDatabase();
    final List<Map<String,dynamic>> result = await bancoDeDados.query(_tablename);
    print('Procurando dados no banco de dados... encontrado: $result');
    return toList();
  }
  Future<List<Task>> find(String nomeDaTarefa) async{}
  delete(String nomeDaTarefa) async{}
}
