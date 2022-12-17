enum LevelEnum {
  low('LOW'),
  medium('MEDIUM'),
  high('HIGH'),
  undefined('');

  const LevelEnum(this.level);

  final String level;
}

extension LevelEnumExtension on LevelEnum {
  String? get label {
    switch (this) {
      case LevelEnum.high:
        return 'Alto';
      case LevelEnum.medium:
        return 'Medio';
      case LevelEnum.low:
        return 'Baixo';
      default:
        return null;
    }
  }
}
