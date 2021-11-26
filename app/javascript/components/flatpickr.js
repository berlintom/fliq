import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    enableTime: true,
    noCalendar: true,
    dateFormat: "H:i",
  });
}

export { initFlatpickr };
