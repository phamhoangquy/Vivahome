$(document).ready(function() {
    swiperInit();
    showBackToTop();
    coutingNumber();
    activeHeaderWhenScroll();
    toggleMenuMobile();
    moveNav();
    moveSelect();
    // mappingMenu();
    // mappingContact();
    // mappingSearch();
    // setTimeout(() => {
    //     $('#l_0').trigger("click")
    // }, 500);
});
$(window).resize(function() {
        if ($(window).width() <= 1024) {
            $('.language').appendTo('.header-container #div-mobile');
            $('.search').appendTo('.header-container #div-mobile')
        } else {
            $('.language').appendTo('.nav-item #language-desktop');
            $('.search').appendTo('.nav-item #search-desktop');
        }

    })
    //Toggle menu mobile
const toggleMenuMobile = () => {
    $('.header-container__toggle-menu').on('click', function() {
        $(this).toggleClass('active');
        $(this).siblings('.header-container__main-nav').toggleClass('active');
        $('body').toggleClass('disabled');
    });
};

//Move nav-item
function moveNav() {
    if ($(window).width() <= 1024.98) {
        $('.language').appendTo('.header-container #div-mobile');
        $('.search').appendTo('.header-container #div-mobile')
    } else {
        $('.language').appendTo('.nav-item #language-desktop');
        $('.search').appendTo('.nav-item #search-desktop');
    }
}
//Move select fillter product
function moveSelect() {
    $('.fillter').appendTo('ul.nav #div');
    $('.fillter').each(function() {
        if (!$(this).text().match(/^\s*$/)) {
            $(this).insertBefore($(this).prev('.nav-item'));
        }
    });
    $('.wrap').appendTo('.content__sidebar #range');
}

//Header when scroll
const activeHeaderWhenScroll = () => {
    const heightHeader = document.querySelector('header').offsetHeight;
    window.addEventListener('scroll', function() {
        if (window.pageYOffset >= heightHeader) {
            document.querySelector('header').classList.add('header-croll-down');
        } else {
            document.querySelector('header').classList.remove('header-croll-down');
        }
    });
};

function linkAbout() {
    $(".link-to-about-section a").on("click", function(event) {
        if (this.hash !== "") {
            let offset =
                $("header").outerHeight();
            var hash = this.hash;
            $("html, body").animate({
                    scrollTop: $(hash).offset().top - offset,
                },
                800,
                function() {
                    window.location.hash = hash;
                }
            );
        } // End if
    });
}

function showBackToTop() {
    $(window).scroll(function() {
        if ($(this).scrollTop() > 0) {
            $('#back-to-top').addClass('active');
        } else {
            $('#back-to-top').removeClass('active');
        }
    });

    $("#back-to-top").on("click", function(e) {
        e.preventDefault();
        $("html,body").animate({
            scrollTop: 0
        })
    })
}

function coutingNumber() {
    $('.counter').each(function() {
        var $this = $(this),
            countTo = $this.attr('data-count');
        $({ countNum: $this.text() }).animate({
            countNum: countTo
        }, {
            duration: 5000,
            easing: 'linear',
            step: function() {
                $this.text(Math.floor(this.countNum));
            },
            complete: function() {
                $this.text(this.countNum);
                //alert('finished');
            }
        });
    });
}

function changeIframe() {
    $(document).on('click', '.pnholding-maps ul li', function() {
        var data = $(this).attr('data-iframe')
        $('#custom-maps iframe').attr('src', data)
    })

}
//Check if windows size large then 1024 then these function will be execute
if ($(window).width() > 1024) {
    const $menu = $(".searchbox");
    $(document).mouseup(e => {
        if (!$menu.is(e.target) && // if the target of the click isn't the container...
            $menu.has(e.target).length === 0
        ) {
            // ... nor a descendant of the container
            $menu.removeClass("active");
        }
    });
}
// Remove when click outside the circle
function tabActive() {
    $(".tab-navigation li a").on("click", function() {
        $(this)
            .parents(".tab-navigation")
            .find("li")
            .removeClass("active");
        $(this)
            .parents("li")
            .addClass("active");

        var display = $(this).attr("data-type");
        $(".tab-item").removeClass("active");
        $("#" + display).addClass("active");
    });
}

function sideNavigation() {
    let trigger = $('.side-navigation-wrapper .side-navigation .title em');
    let close = $('.side-navigation-wrapper .side-navigation  .nav-sub');
    let parent = $('.side-navigation-wrapper .side-navigation  li');
    trigger.on('click', function(e) {
        e.preventDefault();
        if (!$(this).parent().parent().hasClass("open")) {
            close.slideUp();
            $(this).parent().next().slideToggle();
            parent.removeClass('open')
            $(this).parents('li').addClass('open')
        } else {
            $(this).parent().next().slideToggle();
            parent.removeClass('open')
        }
    })
}

function swiperInit() {
    var homerSwiper = new Swiper(".home-banner .swiper-container", {
        // Optional parameters
        speed: 1205,
        slidesPerView: 1,
        autoplay: {
            delay: 3000
        },
        pagination: {
            el: ".home-banner-pagination",
            type: "bullets",
            clickable: "true"
        }
    });
    var projectSwiper = new Swiper(".block_project .swiper-container", {
        // Optional parameters
        speed: 1205,
        slidesPerView: 1,
        autoplay: {
            delay: 3000
        },
        navigation: {
            nextEl: '.block_project .nav-arrow-next',
            prevEl: '.block_project .nav-arrow-prev',
        },
    });
    var newsSwiper = new Swiper(".block_news .swiper-container", {
        // Optional parameters
        speed: 1000,
        autoplay: {
            delay: 2000
        },
        navigation: {
            nextEl: '.block_news .nav-arrow-next',
            prevEl: '.block_news .nav-arrow-prev',
        },
        breakpointsInverse: true,
        spaceBetween: 30,
        breakpoints: {
            320: {
                slidesPerView: 1,

            },
            480: {
                slidesPerView: 2,

            },
            768: {
                slidesPerView: 2,

            },
            1025: {
                slidesPerView: 3,

            },
            1200: {
                slidesPerView: 3,
            },
            1440: {
                slidesPerView: 3,
            },
            1600: {
                slidesPerView: 3,
            },
        },
    });
    var brandSwiper = new Swiper(".brand-display .swiper-container", {
        slidesPerColumn: 2,
        slidesPerView: 6,
        speed: 1000,
        autoplay: false,
        loop: true,
        autoplay: {
            delay: 2000
        },
        navigation: {
            nextEl: '.brand-display .nav-arrow-next',
            prevEl: '.brand-display .nav-arrow-prev',
        },
        breakpointsInverse: true,
        breakpoints: {
            320: {
                slidesPerView: 1,

            },
            400: {
                slidesPerView: 2,

            },
            480: {
                slidesPerView: 2,

            },
            768: {
                slidesPerView: 4,

            },
            1025: {
                slidesPerView: 6,

            },
            1440: {
                slidesPerView: 6,

            },
        },

    });

}


// function toggleMobileMenu() {
//     $(".mobile-toggle").on("click", function() {
//         $(".mobile-wrapper").toggleClass("active");
//     });
// }

// function mappingMenu() {
//     return new MappingListener({
//         selector: ".nav-menu-primary",
//         mobileWrapper: ".mobile-wrapper",
//         mobileMethod: "appendTo",
//         desktopWrapper: ".wrapper-bottom",
//         desktopMethod: "appendTo",
//         breakpoint: 1025
//     }).watch();
// }

// function mappingContact() {
//     return new MappingListener({
//         selector: ".contact-wrapper",
//         mobileWrapper: ".mobile-wrapper",
//         mobileMethod: "appendTo",
//         desktopWrapper: ".language-wrapper",
//         desktopMethod: "insertBefore",
//         breakpoint: 1025
//     }).watch();
// }

// function mappingSearch() {
//     return new MappingListener({
//         selector: ".search-wrapper",
//         mobileWrapper: ".mobile-wrapper",
//         mobileMethod: "appendTo",
//         desktopWrapper: ".Module-146",
//         desktopMethod: "insertAfter",
//         breakpoint: 1025
//     }).watch();
// }