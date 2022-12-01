enum StatusLimitEnum{late, limitTime, inTheLimit}

extension StatusLimitEnumExtension on StatusLimitEnum{
  String get value {
    switch (this) {
      case StatusLimitEnum.inTheLimit:
        return 'IN_THE_LIMIT';
      case StatusLimitEnum.late: 
      return 'LATE';
      case StatusLimitEnum.limitTime: 
      return 'LIMIT_TIME';
    }
  }
}
