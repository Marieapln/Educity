import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    altInput: true,
    altFormat: "F j, Y",
    dateFormat: "Y-m-d",
  });
}

$('.timepicker').flatpickr({
  altInput: true,
  noCalendar: true,
  enableTime: true,
  minuteIncrement: 15,
  defaultHour: 12,
  defaultMinute: 0,
  altFormat: 'h:i K'
});

$('.durationpicker').flatpickr({
  altInput: true,
  noCalendar: true,
  enableTime: true,
  minuteIncrement: 30,
  defaultHour: 1,
  defaultMinute: 0,
  time_24hr: true,
  altFormat: "h \\ho\\ur i \\m\\i\\n\\ute\\s",
});

export { initFlatpickr };
