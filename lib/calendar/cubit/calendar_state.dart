part of 'calendar_cubit.dart';

class CalendarState extends Equatable {
  const CalendarState({
    this.eventTitle = const EventTitle.pure(),
    this.eventDescription = const EventDescription.pure(),
    this.eventDay = const EventDay.pure(),
    this.eventMonth = const EventMonth.pure(),
    this.eventYear = const EventYear.pure(),
    this.eventSubscriptionId = const EventSubscriptionId.pure(),
    this.eventDuration = const EventDuration.pure(),
    this.eventType = const EventType.pure(),
    this.eventTimeStart = const EventTimeStart.pure(),
    this.status = FormzStatus.pure,
  });

  final EventTitle eventTitle;
  final EventDescription eventDescription;
  final EventDay eventDay;
  final EventMonth eventMonth;
  final EventYear eventYear;
  final EventTimeStart eventTimeStart;
  final EventSubscriptionId eventSubscriptionId;
  final EventDuration eventDuration;
  final EventType eventType;
  final FormzStatus status;

  // final typeStatus = Formz.validate([eventType]);
  //   final eventDescription = Formz.validate([state.eventDescription]);
  //   final eventDay = Formz.validate([state.eventDay]);
  //   final eventTitle = Formz.validate([state.eventTitle]);
  //   final eventSubscriptionId = Formz.validate([state.eventSubscriptionId]);
  //   final eventYear = Formz.validate([state.eventYear]);
  //   final eventTimeStart = Formz.validate([state.eventTimeStart]);

  @override
  List<Object> get props => [
        status,
        eventTitle,
        eventDescription,
        eventDay,
        eventMonth,
        eventYear,
        eventTimeStart,
        eventSubscriptionId,
        eventType,
        eventDuration,
      ];
  CalendarState copyWith({
    EventTitle? eventTitle,
    EventDescription? eventDescription,
    EventDay? eventDay,
    EventMonth? eventMonth,
    EventYear? eventYear,
    EventTimeStart? eventTimeStart,
    EventSubscriptionId? eventSubscriptionId,
    EventDuration? eventDuration,
    EventType? eventType,
    FormzStatus? status,
  }) {
    return CalendarState(
      status: status ?? this.status,
      eventTitle: eventTitle ?? this.eventTitle,
      eventDescription: eventDescription ?? this.eventDescription,
      eventDay: eventDay ?? this.eventDay,
      eventMonth: eventMonth ?? this.eventMonth,
      eventTimeStart: eventTimeStart ?? this.eventTimeStart,
      eventYear: eventYear ?? this.eventYear,
      eventType: eventType ?? this.eventType,
      eventSubscriptionId: eventSubscriptionId ?? this.eventSubscriptionId,
      eventDuration: eventDuration ?? this.eventDuration,
    );
  }
}
