class Habit {
  bool isActive = true;
  int streak = 0;

  List<DateTime> completed = [];
  List<DateTime> notCompleted = [];
  final int habitId;
  String creationDate;


  Habit({required this.habitId, required  this.creationDate}) {
    add_uncompleted_habit(DateTime.parse(this.creationDate));
  }

  void add_complete_habit(DateTime todays_date) {
    completed.add(todays_date);
  }

  //  when habit will created
  //  then by default it will  go in notcompleted habit
  void add_uncompleted_habit(DateTime todays_date) {
    notCompleted.add(todays_date);
  }

  void Complete_todays_Habit(DateTime todays_date) {
    notCompleted.removeWhere((element) {
      String td = "${todays_date.day}/${todays_date.month}/${todays_date.year}";
      String ed = "${element.day}/${element.month}/${element.year}";

      return (td == ed) ? true : false;
    });

    completed.add(todays_date);
  }

  Map<String, dynamic> toJson() {
    List<String> completedDate = [];
    List<String> not_completedDate = [];

    // print (" comp : ${this.completed } not : ${this.notCompleted}");

    int n1 = this.completed.length;
    int n2 = this.notCompleted.length;

    // print("n1 : ${n1} n2 : ${n2}");
    for (var i = 0; i < n1; i++) {
      completedDate.add(this.completed[i].toString());
    }
    for (var i = 0; i < n2; i++) {
      not_completedDate.add(this.notCompleted[i].toString());
    }
    // print("  comp 2  :${completedDate}  not 2 ${not_completedDate}  :");

    return {
      'isActive': isActive,
      'streak': streak,
      'completed': completedDate,
      'notCompleted': not_completedDate,
      'habitId': habitId,
      'creationDate':creationDate
    };
  }

  /**
  *  Habit.fromJson(Map<String, dynamic> json)
      : isActive = json['isActive'],
        streak = json['streak'],
        completed = json['completed'],
        notCompleted = json['notCompleted'],
        habitId = json['habitId'];
  */

  static Habit fromJsonMap(Map<String, dynamic> map) {
    List<DateTime> completedDate = [];
    List<DateTime> not_completedDate = [];
    int n1 = map['completed'].length;
    int n2 = map['notCompleted'].length;

    for (var i = 0; i < n1; i++) {
      completedDate.add(DateTime.parse(map['completed'][i]));
    }
    for (var i = 0; i < n2; i++) {
      not_completedDate.add(DateTime.parse(map['notCompleted'][i]));
    }
    print(" com2 : ${completedDate} not compl ${not_completedDate} ");

    Habit habitData = Habit(
      // habitId: habitId, creationDate: creationDate
      habitId: map['habitId'],
      creationDate: map['creationDate'],
    );

    habitData.completed = completedDate;
    habitData.notCompleted = not_completedDate;
    habitData.streak=map['streak'];
    habitData.isActive=map['isActive'];



    return habitData;
  }

// getHabitObjectFrom

}
