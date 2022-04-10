class word {
  late String? defination;
  late String? name;
  late bool? valid;
  word({required this.defination, required this.name, required this.valid});
  factory word.fromJson(Map<String, dynamic> json) {
    return word(
        defination: json['definition'],
        name: json['word'],
        valid: json['valid']);
  }
}
