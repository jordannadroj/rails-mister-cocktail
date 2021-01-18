import $ from 'jquery';
import 'select2';

const select2 = () => {
$(document).ready(function() {
    $('.ingredient-list').select2();
});
}

export { select2 };
