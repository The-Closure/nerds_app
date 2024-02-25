
import 'package:dashbord_cafe/features/place_of_study/domain/entities/table_entity.dart';


abstract class TableEvent {
  const TableEvent();
}

class GetTables extends TableEvent {
  const GetTables();
}


class PostTable extends TableEvent {
  TableEntity tableEntity;
   PostTable({
    required this.tableEntity,
  });
}


class PutTable extends TableEvent {
  TableEntity tableEntity;
  int id;
   PutTable({required this.tableEntity,required this.id});
}
class DeletTable extends TableEvent {
  int id;

   DeletTable({required this.id});
}