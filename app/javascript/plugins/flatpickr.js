import flatpickr from "flatpickr";

const initFlatpickr = () => {
}

$('.datepicker').flatpickr({
  dateFormat: 'l\\s fro\\m J F Y'
});

$('.timepicker').flatpickr({
  noCalendar: true,
  enableTime: true,
  minuteIncrement: 15,
  defaultHour: 12,
  defaultMinute: 0,
  dateFormat: 'h:i K'
});

$('.durationpicker').flatpickr({
  noCalendar: true,
  enableTime: true,
  minuteIncrement: 30,
  defaultHour: 1,
  defaultMinute: 0,
  time_24hr: true,
  dateFormat: "h \\ho\\ur i \\m\\i\\n\\ute\\s",
});

export { initFlatpickr };
