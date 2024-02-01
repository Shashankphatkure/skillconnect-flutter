import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(super.data);

  @override
  SupabaseTable get table => UsersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get username => getField<String>('username')!;
  set username(String value) => setField<String>('username', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String get password => getField<String>('password')!;
  set password(String value) => setField<String>('password', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
