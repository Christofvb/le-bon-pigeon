import 'bootstrap-datepicker';
import 'bootstrap-datepicker/dist/css/bootstrap-datepicker.css';

document.addEventListener('turbolinks:load', () => {
  $('.datepicker').datepicker({
    format: 'yyyy-mm-dd',
    // Other datepicker options
  });
});
