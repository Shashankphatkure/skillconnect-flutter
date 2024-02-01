import '../database.dart';

class CoursereviewsTable extends SupabaseTable<CoursereviewsRow> {
  @override
  String get tableName => 'coursereviews';

  @override
  CoursereviewsRow createRow(Map<String, dynamic> data) =>
      CoursereviewsRow(data);
}

class CoursereviewsRow extends SupabaseDataRow {
  CoursereviewsRow(super.data);

  @override
  SupabaseTable get table => CoursereviewsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get reviewtitle => getField<String>('reviewtitle');
  set reviewtitle(String? value) => setField<String>('reviewtitle', value);

  String? get reviewdescription => getField<String>('reviewdescription');
  set reviewdescription(String? value) =>
      setField<String>('reviewdescription', value);

  int? get reviewrating => getField<int>('reviewrating');
  set reviewrating(int? value) => setField<int>('reviewrating', value);
}
