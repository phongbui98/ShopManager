
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header>
    <div class="mainmenu-area">
        <div class="container">
            <div class="row">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span> <span
                            class="icon-bar"></span> <span class="icon-bar"></span> <span
                            class="icon-bar"></span>
                    </button>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li style="margin-right: 50px;"><img src="img/lgbaby.jpg"
                                                             style="height: 60px;"></li>
                        <li><a href="<c:url value='/home'/>">Trang chủ</a></li>
                        <!-- <li><a href="#">Giới thiệu</a></li> -->
                        <li><a href="<c:url value='/product'/> ">Sản phẩm</a></li>
                        <li><a href="<c:url value='/cart'/>">Giỏ Hàng</a></li>
                        <li><a href="<c:url value='/checkout'/>">Đặt hàng</a></li>
                        <li><a href="#">Fanpage</a></li>
                        <li><a href="<c:url value='/login'/>">Đăng nhập</a></li>
                        <li><a href="<c:url value='/register'/>">Đăng ký</a></li>
                        <li class="dropdown" style="float: right;"><a class="dropdown-toggle"
                                                                      data-toggle="dropdown" href="#"
                                                                      aria-expanded="false">
                            <i
                                    class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                        </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="#"><i class="fa fa-user fa-fw"></i>Đỗ Duy Mậu</a></li>
                                <li><a href="#"><i class="fa fa-sign-out fa-fw"></i>
                                    Đăng xuất</a></li>
                            </ul> <!-- /.dropdown-user --></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</header>