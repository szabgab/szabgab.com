
// notification at the top of the page
//$(function() {
//	if (document.referrer.indexOf('szabgab') == -1 && document.URL.indexOf('beginner-perl-maven.html') == -1) {
//		setTimeout(notify, 1000);
//	}
//});

//function notify() {
//	var notification = '<div id="notification" style="display:none">';
//	notification += '<span class="notify-close"><a title="dismiss this notification">&times</a></span>';
//	//country = 'il';
//	//country = 'ca';
//	notification += 'Get the <a href="/beginner-perl-maven.html">Beginner Perl Maven course</a> at 51% discount before 9 January 2012!';
//	notification += '</div>';
//	$("#notify-container").append(notification);
//	$("#notify-container div").fadeIn("slow");
//	$(".notify-close").click(function(){ $("#notify-container div").fadeOut("slow");    });
//}
//

// Start the Bulma Hamburger in the navigation
document.addEventListener('DOMContentLoaded', () => {
  // Get all "navbar-burger" elements
  const $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);

  // Add a click event on each of them
  $navbarBurgers.forEach( el => {
    el.addEventListener('click', () => {

      // Get the target from the "data-target" attribute
      const target = el.dataset.target;
      const $target = document.getElementById(target);

      // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
      el.classList.toggle('is-active');
      $target.classList.toggle('is-active');
    });
  });
});

