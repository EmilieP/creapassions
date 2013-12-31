initInfiniteScroll = (element, item_selector) ->
  $element.infinitescroll
    navSelector: "ul.pagination"
    nextSelector: "ul.pagination a[rel=next]"
    itemSelector: "#books li.book"

findInfiniteScroll = () ->
  each $('*[data-scroll="infinite"]'), (index, element) ->
    initInfiniteScroll(element, $(element).data('scroll-append'))

$(document).ready ->
  findInfiniteScroll();
