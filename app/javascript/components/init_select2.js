import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.select2').select2({
    sorter: data => data.sort((a, b) => a.text.localeCompare(b.text))
  })
};

export { initSelect2 };
