import "bootstrap";
import Sortable from 'sortablejs';

Sortable.create(listReceivedRequests, {
  handle: '.card-service-hidden',
  animation: 150
});

// setTimeout(function(){
//   alert("Boom!");
// }, 3000);

