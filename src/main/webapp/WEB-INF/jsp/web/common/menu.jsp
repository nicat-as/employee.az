<%--
  Created by IntelliJ IDEA.
  User: farid
  Date: 03.10.19
  Time: 23:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="header-area hidden-menu-bar stick" id="sticker">
    <!-- mainmenu start -->
    <div class="mainmenu">
        <div class="gc_right_menu">
            <ul>
                <li id="search_button">
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_3" x="0px" y="0px" viewBox="0 0 451 451" style="enable-background:new 0 0 451 451;" xml:space="preserve"><g><path id="search" d="M447.05,428l-109.6-109.6c29.4-33.8,47.2-77.9,47.2-126.1C384.65,86.2,298.35,0,192.35,0C86.25,0,0.05,86.3,0.05,192.3   s86.3,192.3,192.3,192.3c48.2,0,92.3-17.8,126.1-47.2L428.05,447c2.6,2.6,6.1,4,9.5,4s6.9-1.3,9.5-4   C452.25,441.8,452.25,433.2,447.05,428z M26.95,192.3c0-91.2,74.2-165.3,165.3-165.3c91.2,0,165.3,74.2,165.3,165.3   s-74.1,165.4-165.3,165.4C101.15,357.7,26.95,283.5,26.95,192.3z" fill="#23c0e9"/></g></svg>
                </li>
                <li>
                    <div id="search_open" class="gc_search_box">
                        <input type="text" placeholder="Search here">
                        <button><i class="fa fa-search" aria-hidden="true"></i></button>
                    </div>
                </li>
            </ul>
        </div>
        <ul class="float_left">
            <li class="has-mega gc_main_navigation"><a href="/" class="gc_main_navigation">  Home&nbsp;</a>
            </li>
            <li class="has-mega gc_main_navigation"><a href="jobs" class="gc_main_navigation">  Jobs&nbsp;</a>
            </li>

            <li class="parent gc_main_navigation"><a href="candidates" class="gc_main_navigation">Candidates</a>
            </li>

            <li class="parent gc_main_navigation"><a href="companies" class="gc_main_navigation">Companies</a>
            </li>

            <li class="gc_main_navigation parent"><a href="contact" class="gc_main_navigation">Contact</a></li>
        </ul>
    </div>
    <!-- mainmenu end -->
    <!-- mobile menu area start -->
    <header class="mobail_menu">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-6 col-sm-6">
                    <div class="gc_logo">
                        <a href="index"><img src="images/header/logo.png" alt="Logo" title="Grace Church"></a>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6">
                    <div class="cd-dropdown-wrapper">
                        <a class="house_toggle" href="#0">
                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 31.177 31.177" style="enable-background:new 0 0 31.177 31.177;" xml:space="preserve" width="25px" height="25px"><g><g><path class="menubar" d="M30.23,1.775H0.946c-0.489,0-0.887-0.398-0.887-0.888S0.457,0,0.946,0H30.23    c0.49,0,0.888,0.398,0.888,0.888S30.72,1.775,30.23,1.775z" fill="#ffffff"/></g><g><path class="menubar" d="M30.23,9.126H12.069c-0.49,0-0.888-0.398-0.888-0.888c0-0.49,0.398-0.888,0.888-0.888H30.23    c0.49,0,0.888,0.397,0.888,0.888C31.118,8.729,30.72,9.126,30.23,9.126z" fill="#ffffff"/></g><g><path class="menubar" d="M30.23,16.477H0.946c-0.489,0-0.887-0.398-0.887-0.888c0-0.49,0.398-0.888,0.887-0.888H30.23    c0.49,0,0.888,0.397,0.888,0.888C31.118,16.079,30.72,16.477,30.23,16.477z" fill="#ffffff"/></g><g><path class="menubar" d="M30.23,23.826H12.069c-0.49,0-0.888-0.396-0.888-0.887c0-0.49,0.398-0.888,0.888-0.888H30.23    c0.49,0,0.888,0.397,0.888,0.888C31.118,23.43,30.72,23.826,30.23,23.826z" fill="#ffffff"/></g><g><path class="menubar" d="M30.23,31.177H0.946c-0.489,0-0.887-0.396-0.887-0.887c0-0.49,0.398-0.888,0.887-0.888H30.23    c0.49,0,0.888,0.398,0.888,0.888C31.118,30.78,30.72,31.177,30.23,31.177z" fill="#ffffff"/></g></g></svg>
                        </a>
                        <nav class="cd-dropdown">
                            <h2><a href="#">Job<span>Pro</span></a></h2>
                            <a href="#0" class="cd-close">Close</a>
                            <ul class="cd-dropdown-content">
                                <li>
                                    <form class="cd-search">
                                        <input type="search" placeholder="Search...">
                                    </form>
                                </li>
                                <li>
                                    <a href="index">Home</a>
                                </li>
                                <!-- .has-children -->


                                <li>
                                    <a href="jobs">Jobs</a>
                                    </ul>
                                    <!-- .cd-secondary-dropdown -->
                                </li>
                                <!-- .has-children -->
                                <li>
                                    <a href="candidates">Candidates</a>
                                </li>

                            <li>
                                <a href="companies">Companies</a>
                            </li>
                                <!-- .has-children -->
                                <li>
                                    <a href="contact">Contact</a>
                                </li>
                                <li>
                                    <a href="register">Sign Up</a>
                                </li>
                                <li>
                                    <a href="login">Login</a>
                                </li>

                            </ul>
                            <!-- .cd-dropdown-content -->



                        </nav>
                        <!-- .cd-dropdown -->

                    </div>
                </div>
            </div>
        </div>
        <!-- .cd-dropdown-wrapper -->
    </header>
</div>
