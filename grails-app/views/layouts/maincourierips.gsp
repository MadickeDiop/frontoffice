<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <title>La Poste : Ips</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'laposte.ico')}" type="image/x-icon">
    <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
    <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
    <link rel="stylesheet" href="${resource(dir: 'jotnaci', file: 'assets/css/material-dashboard.css?v=2.1.1')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'fonts/font-awesome/css/font-awesome.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'jotnaci', file: 'assets/demo/demo.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'jotnaci', file: 'assets/css/bootstrap-datepicker3.min.css')}" type="text/css">
    <g:javascript src="../js/angular.min.js"/>
    <g:javascript src="../jotnaci/assets/js/core/jquery.min.js" />
    <g:javascript src="../js/jquery-barcode.min.js"/>
    <g:layoutHead/>

</head>
<body>
<div class="wrapper" >
    <div class="sidebar d-print-none" data-color="purple" data-background-color="white" data-image="">

        <div class="logo">
            <g:link action="index" controller="AccueilJotnaci" class="simple-text logo-normal">
                <img style="width: 180px;height: 60px" src="${resource(dir: 'images', file: 'ips.png')}" alt="jotnaci"/>
            </g:link>
        </div>
        <div class="sidebar-wrapper">
            <ul class="nav">
                <li class="nav-item active ">
                    <g:link class="nav-link" action="index" controller="AccueilJotnaci">
                        <i class="fa fa-dashboard"></i>
                        <p>International Postal System</p>
                    </g:link>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" data-toggle="collapse" href="#tablesExamplessm">
                        <i class="fa fa fa-envelope-square"></i>
                        <p> Lettres
                            <b class="caret"></b>
                        </p>
                    </a>
                    <div class="collapse" id="tablesExamplessm">
                        <ul class="nav">
                            <li class="nav-item ">
                                <g:link class="nav-link" action="recapxml" controller="courier" >
                                    <i class="fa fa-arrow-circle-right"></i>
                                    <span class="sidebar-normal">envoi a receptionner</span>
                                </g:link>
                            </li>

                        </ul>
                    </div>
                </li>


                <sec:ifAllGranted roles="ROLE_RECEVEUR">
                    <li class="nav-item ">
                        <a class="nav-link" data-toggle="collapse" href="#tablesExamples">
                            <i class="fa fa-cubes"></i>
                            <p> Colis
                                <b class="caret"></b>
                            </p>
                        </a>
                        <div class="collapse" id="tablesExamples">
                            <ul class="nav">
                                <li class="nav-item ">
                                    <g:link class="nav-link" action="rechercherExpediteur" controller="Jt_Commande" id="1">
                                        <i class="fa fa-arrow-circle-right"></i>
                                        <span class="sidebar-normal">envoi a receptionner</span>
                                    </g:link>
                                </li>
                            </ul>
                        </div>
                    </li>
                </sec:ifAllGranted>

        </div>
    </div>
    <div class="main-panel">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top d-print-none">
            <div class="container-fluid">
                <div class="navbar-wrapper hiderow">
                    <a class="navbar-brand" href="#pablo"><span class="text">${session.samafullname}&nbsp;&nbsp;- ${session.samabureau}</span></a>
                </div>
                <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="navbar-toggler-icon icon-bar"></span>
                    <span class="navbar-toggler-icon icon-bar"></span>
                    <span class="navbar-toggler-icon icon-bar"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end">
                    <g:form  action= "search" controller="jt_Commande" class="navbar-form">
                        <div class="input-group no-border">
                            <input type="text" name="search" value="" class="form-control" placeholder="Rechercher...">
                            <button type="submit" class="btn btn-white btn-round btn-just-icon">
                                <i class="fa fa-search"></i>
                                <div class="ripple-container"></div>
                            </button>
                        </div>
                    </g:form>
                    <ul class="navbar-nav">
                        <sec:ifAllGranted roles="ROLE_CJT">
                            <g:include controller="jt_Suggestions" action="listSuggestions"/>
                        </sec:ifAllGranted>
                        <li class="nav-item dropdown">
                            <a class="nav-link" href="#pablo" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fa fa-user"></i>
                                <p class="d-lg-none d-md-block">
                                    Account
                                </p>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
                                <a class="dropdown-item" href="${resource(dir: 'images', file: 'manueljotnaci.pdf')}" target="blank">Guide utilisateur</a>
                                <a class="dropdown-item" href="#">Modifier Mot de Passe</a>
                                <div class="dropdown-divider"></div>
                                <form name="submitForm" method="POST" action="${createLink(controller: 'Logout', action:'index')}">
                                    <a class="dropdown-item"  href="javascript:document.submitForm.submit()">Se déconnecter</a>
                                </form>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- End Navbar -->
        <div class="content">
            <div class="container-fluid">
                <g:layoutBody/>

                <r:layoutResources />

            </div>
        </div>
        <footer class="footer d-print-none">
            <div class="container-fluid">
                <div class="copyright float-right">
                    &copy;
                    <script>
                        document.write(new Date().getFullYear())
                    </script>, Développé par La Poste.
                </div>
            </div>
        </footer><%--
     <button class="btn btn-block btn-info fixed-plugin" data-toggle="modal" data-target="#myModal">
       <i class="material-icons">library_books</i>
     <div class="ripple-container"></div></button>
      <g:include action="suggestion" controller="jt_Suggestions"/>

		--%></div>
    <g:set var="test" value="${[1,2] }" ></g:set>
    <!--   Core JS Files   -->
    <div class="ps-scrollbar-x-rail" style="left: 0px; bottom: 0px;"><div class="ps-scrollbar-x" tabindex="0" style="left: 0px; width: 0px;"></div></div>

</div>


<g:javascript src="../jotnaci/assets/js/core/popper.min.js" />
<g:javascript src="../jotnaci/assets/js/core/bootstrap-material-design.min.js" />
<g:javascript src="../jotnaci/assets/js/plugins/perfect-scrollbar.jquery.min.js" />
<g:javascript src="../jotnaci/assets/js/plugins/moment.min.js" />
<g:javascript src="../jotnaci/assets/js/plugins/sweetalert2.js" />
<g:javascript src="../jotnaci/assets/js/plugins/jquery.validate.min.js" />
<g:javascript src="../jotnaci/assets/js/plugins/bootstrap-selectpicker.js" />
<g:javascript src="../jotnaci/assets/js/plugins/bootstrap-datetimepicker.min.js" />
<g:javascript src="../jotnaci/assets/js/plugins/jquery.dataTables.min.js" />
<g:javascript src="../jotnaci/assets/js/plugins/bootstrap-tagsinput.js" />
<g:javascript src="../jotnaci/assets/js/plugins/jasny-bootstrap.min.js" />
<g:javascript src="../jotnaci/assets/js/plugins/fullcalendar.min.js" />
<g:javascript src="../jotnaci/assets/js/plugins/jquery-jvectormap.js" />
<g:javascript src="../jotnaci/assets/js/plugins/nouislider.min.js" />
<g:javascript src="../jotnaci/assets/js/plugins/arrive.min.js" /><%--
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  --%><g:javascript src="../jotnaci/assets/js/plugins/chartist.min.js" />
<g:javascript src="../jotnaci/assets/js/plugins/bootstrap-notify.js" />
<script src="/frontofficetest1/js/../jotnaci/assets/js/material-dashboard.js?v=2.1.1" type="text/javascript"></script>
<g:javascript src="../jotnaci/assets/js/plugins/bootstrap-notify.js" />
<g:javascript src="../jotnaci/assets/js/demo.js" />
<g:javascript src="../js/app.js" />
<script type="text/javascript">
    $(document).ready(function() {
        $().ready(function() {
            $sidebar = $('.sidebar');
            $sidebar_img_container = $sidebar.find('.sidebar-background');

            $full_page = $('.full-page');

            $sidebar_responsive = $('body > .navbar-collapse');

            window_width = $(window).width();

            fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();

            if (window_width > 767 && fixed_plugin_open == 'Dashboard') {
                if ($('.fixed-plugin .dropdown').hasClass('show-dropdown')) {
                    $('.fixed-plugin .dropdown').addClass('open');
                }

            }

            $('.fixed-plugin a').click(function(event) {
                // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
                if ($(this).hasClass('switch-trigger')) {
                    if (event.stopPropagation) {
                        event.stopPropagation();
                    } else if (window.event) {
                        window.event.cancelBubble = true;
                    }
                }
            });

            $('.fixed-plugin .active-color span').click(function() {
                $full_page_background = $('.full-page-background');

                $(this).siblings().removeClass('active');
                $(this).addClass('active');

                var new_color = $(this).data('color');

                if ($sidebar.length != 0) {
                    $sidebar.attr('data-color', new_color);
                }

                if ($full_page.length != 0) {
                    $full_page.attr('filter-color', new_color);
                }

                if ($sidebar_responsive.length != 0) {
                    $sidebar_responsive.attr('data-color', new_color);
                }
            });

            $('.fixed-plugin .background-color .badge').click(function() {
                $(this).siblings().removeClass('active');
                $(this).addClass('active');

                var new_color = $(this).data('background-color');

                if ($sidebar.length != 0) {
                    $sidebar.attr('data-background-color', new_color);
                }
            });

            $('.fixed-plugin .img-holder').click(function() {
                $full_page_background = $('.full-page-background');

                $(this).parent('li').siblings().removeClass('active');
                $(this).parent('li').addClass('active');


                var new_image = $(this).find("img").attr('src');

                if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
                    $sidebar_img_container.fadeOut('fast', function() {
                        $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
                        $sidebar_img_container.fadeIn('fast');
                    });
                }

                if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
                    var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

                    $full_page_background.fadeOut('fast', function() {
                        $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
                        $full_page_background.fadeIn('fast');
                    });
                }

                if ($('.switch-sidebar-image input:checked').length == 0) {
                    var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
                    var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

                    $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
                    $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
                }

                if ($sidebar_responsive.length != 0) {
                    $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
                }
            });

            $('.switch-sidebar-image input').change(function() {
                $full_page_background = $('.full-page-background');

                $input = $(this);

                if ($input.is(':checked')) {
                    if ($sidebar_img_container.length != 0) {
                        $sidebar_img_container.fadeIn('fast');
                        $sidebar.attr('data-image', '#');
                    }

                    if ($full_page_background.length != 0) {
                        $full_page_background.fadeIn('fast');
                        $full_page.attr('data-image', '#');
                    }

                    background_image = true;
                } else {
                    if ($sidebar_img_container.length != 0) {
                        $sidebar.removeAttr('data-image');
                        $sidebar_img_container.fadeOut('fast');
                    }

                    if ($full_page_background.length != 0) {
                        $full_page.removeAttr('data-image', '#');
                        $full_page_background.fadeOut('fast');
                    }

                    background_image = false;
                }
            });

            $('.switch-sidebar-mini input').change(function() {
                $body = $('body');

                $input = $(this);

                if (md.misc.sidebar_mini_active == true) {
                    $('body').removeClass('sidebar-mini');
                    md.misc.sidebar_mini_active = false;

                    $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

                } else {

                    $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

                    setTimeout(function() {
                        $('body').addClass('sidebar-mini');

                        md.misc.sidebar_mini_active = true;
                    }, 300);
                }

                // we simulate the window Resize so the charts will get updated in realtime.
                var simulateWindowResize = setInterval(function() {
                    window.dispatchEvent(new Event('resize'));
                }, 180);

                // we stop the simulation of Window Resize after the animations are completed
                setTimeout(function() {
                    clearInterval(simulateWindowResize);
                }, 1000);

            });
        });
    });
</script>
<script>
    $(document).ready(function() {
        // Javascript method's body can be found in assets/js/demos.js
        md.initDashboardPageCharts();

    });
</script>
<script>
    $(document).ready(function() {
        // initialise Datetimepicker and Sliders
        md.initFormExtendedDatetimepickers();

    });
</script>
</body>
</html>