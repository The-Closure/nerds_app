
import 'package:dashbord_cafe/features/place_of_study/domain/entities/tables_categry_entity.dart';


abstract class TablesCategryEvent {
  const TablesCategryEvent();
}

class GetTablesCategrys extends TablesCategryEvent {
  const GetTablesCategrys();
}


class PostTablesCategry extends TablesCategryEvent {
  TablesCategryEntity tablesCategryEntity;
   PostTablesCategry({
    required this.tablesCategryEntity,
  });
}


class PutTablesCategry extends TablesCategryEvent {
  TablesCategryEntity tablesCategryEntity;
  int id;
   PutTablesCategry({required this.tablesCategryEntity,required this.id});
}
class DeletTablesCategry extends TablesCategryEvent {
  int id;

   DeletTablesCategry({required this.id});
}