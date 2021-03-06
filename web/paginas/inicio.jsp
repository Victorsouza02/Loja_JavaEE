<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="ctrl_prod" class="controller.CtrlProduto"/>
<jsp:useBean id="ctrl_cat" class="controller.CtrlCategoria"/>

<!-- ---------- carousel -----------  -->
<div id="carousel-example-2" class="carousel slide carousel-fade z-depth-1-half" data-ride="carousel" style="z-index: 1; margin-top: 90px;">
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-2" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-2" data-slide-to="1"></li>
        <li data-target="#carousel-example-2" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="carousel-item active">
            <div class="view">
                <img class="d-block w-100" src="img/carousel/carousel07.png" alt="First slide">
                <div class="mask rgba-black-light"></div>
            </div>
        </div>
        <div class="carousel-item">
            <div class="view">
                <img class="d-block w-100" src="img/carousel/carousel01.png" alt="Second slide">
                <div class="mask rgba-black-light"></div>
            </div>
        </div>
        <div class="carousel-item">
            <div class="view">
                <img class="d-block w-100" src="img/carousel/carousel03.png" alt="Third slide">
                <div class="mask rgba-black-light"></div>
            </div>
        </div>
        <div class="carousel-item">
            <div class="view">
                <img class="d-block w-100" src="img/carousel/carousel04.png" alt="Third slide">
                <div class="mask rgba-black-light"></div>
            </div>
        </div>
    </div>
    <a class="carousel-control-prev" href="#carousel-example-2" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carousel-example-2" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
    <!-- ----------------- Linha -----------------  -->
    <hr>
    <!-- ---------- carousel de Marcas -----------  -->
    <div class="container-fluid d-none d-lg-block">
        <div id="multi-item-example" class="carousel slide carousel-multi-item carousel-multi-item-2 text-center" data-ride="carousel">
            <div class="controls-top">
                <a class="black-text" href="#multi-item-example" data-slide="prev"><i class="fa fa-angle-left fa-3x pr-3"></i></a>
                <a class="black-text" href="#multi-item-example" data-slide="next"><i class="fa fa-angle-right fa-3x pl-3"></i></a>
            </div>
            <div class="carousel-inner" role="listbox">
                <div class="carousel-item active">
                    <div class="col-md-3 mb-3">
                        <div class="">
                            <img class="img-fluid" src="img/marcas/nvidia.png">
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <div class="">
                            <img class="img-fluid" src="img/marcas/amd.png">
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <div class="">
                            <img class="img-fluid" src="img/marcas/asus.png">
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <div class="">
                            <img class="img-fluid" src="img/marcas/corsair.png">
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="col-md-3 mb-3">
                        <div class="">
                            <img class="img-fluid" src="img/marcas/samsung.png">
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <div class="">
                            <img class="img-fluid" src="img/marcas/intel.png">
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <div class="">
                            <img class="img-fluid" src="img/marcas/kingston.png">
                        </div>
                    </div>
                    <div class="col-md-3 mb-3">
                        <div class="">
                            <img class="img-fluid" src="img/marcas/logitech.png">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>   
    <style type="text/css">
        @media (min-width: 768px) {
            .carousel-multi-item-2 .col-md-3 {
                float: left;
                width: 25%;
                max-width: 100%; } }

        .carousel-multi-item-2 .card img {
            border-radius: 2px; }
        </style>
        <!-- ---------------- Linha --------------  -->
        <hr>
        <!-- ---------- Card Computador-----------  -->
        <div class="container">
        <section class="text-center pb-1">
            <div class="row pt-5">
                <div class="col-lg-3 col-md-6 mb-r">
                    <div class="card card-cascade narrower" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                        <div class="view overlay hm-white-slight">
                            <div class="card-header">
                                <h4 class="my-0 font-weight-normal clrd-font">Computador</h4>
                            </div> 
                            <img src="img/iconesindex/computador.png" class="img-fluid pt-5" style="width: 180px; height: auto;"><p></p>
                        </div>
                        <span class="mt-5"></span>
                    </div>
                </div>
            <c:forEach items="${ctrl_prod.listarProdutos(1,3)}" var="prod">
                <c:if test="${prod != null}">
                    <div class="col-lg-3 col-md-6 mb-r">
                        <div class="card card-cascade narrower" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                            <div class="view overlay hm-white-slight">
                                <div class="card-header">
                                    <h4 class="my-0 font-weight-normal clrd-font">${prod.nome}</h4>
                                </div> 
                                <img src="img/produtos/${prod.foto1}" class="img-fluid pt-5" style="width: 180px; height: auto;"><p></p>
                                <a href="index.jsp?acao=detalhes&id=${prod.id}" class="btn btn-sm btn-outline-secondary" style="border-color: #04A3FF;">Saiba mais</a>
                            </div>
                            <span class=" mt-3"></span>
                        </div>
                    </div>
                </c:if>
            </c:forEach>                           
        </div>
    </section>
</div>

<!-- ---------- Card Notebook -----------  -->
<div class="container">
    <section class="text-center pb-1">
        <div class="row pt-5">
            <div class="col-lg-3 col-md-6 mb-r">
                <div class="card card-cascade narrower" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                    <div class="view overlay hm-white-slight">
                        <div class="card-header">
                            <h4 class="my-0 font-weight-normal clrd-font">Notebook</h4>
                        </div> 
                        <img src="img/iconesindex/laptop.png" class="img-fluid pt-5" style="width: 180px; height: auto;"><p></p>
                    </div>
                    <span class=" mt-5"></span>
                </div>
            </div>
            <c:forEach items="${ctrl_prod.listarProdutos(2,3)}" var="prod">
                <c:if test="${prod != null}">
                    <div class="col-lg-3 col-md-6 mb-r">
                        <div class="card card-cascade narrower" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                            <div class="view overlay hm-white-slight">
                                <div class="card-header">
                                    <h4 class="my-0 font-weight-normal clrd-font">${prod.nome}</h4>
                                </div> 
                                <img src="img/produtos/${prod.foto1}" class="img-fluid pt-5" style="width: 180px; height: auto;"><p></p>
                                <a href="index.jsp?acao=detalhes&id=${prod.id}" class="btn btn-sm btn-outline-secondary" style="border-color: #04A3FF;">Saiba mais</a>
                            </div>
                            <span class=" mt-3"></span>
                        </div>
                    </div>
                </c:if>
            </c:forEach>                             
        </div>
    </section>
</div>
<!-- ---------- Card Teclado-----------  -->
<div class="container">
    <section class="text-center pb-1">
        <div class="row pt-5">
            <div class="col-lg-3 col-md-6 mb-r">
                <div class="card card-cascade narrower" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                    <div class="view overlay hm-white-slight">
                        <div class="card-header">
                            <h4 class="my-0 font-weight-normal clrd-font">Teclado</h4>
                        </div> 
                        <img src="img/iconesindex/keyboard.png" class="img-fluid pt-5" style="width: 180px; height: auto;"><p></p>
                    </div>
                    <span class=" mt-5"></span>
                </div>
            </div>
            <c:forEach items="${ctrl_prod.listarProdutos(3,3)}" var="prod">
                <c:if test="${prod != null}">
                    <div class="col-lg-3 col-md-6 mb-r">
                        <div class="card card-cascade narrower" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                            <div class="view overlay hm-white-slight">
                                <div class="card-header">
                                    <h4 class="my-0 font-weight-normal clrd-font">${prod.nome}</h4>
                                </div> 
                                <img src="img/produtos/${prod.foto1}" class="img-fluid pt-5" style="width: 180px; height: auto;"><p></p>
                                <a href="index.jsp?acao=detalhes&id=${prod.id}" class="btn btn-sm btn-outline-secondary" style="border-color: #04A3FF;">Saiba mais</a>
                            </div>
                            <span class=" mt-3"></span>
                        </div>
                    </div>
                </c:if>
            </c:forEach>                           
        </div>
    </section>
</div>

<!-- ---------- Card Mouse -----------  -->
<div class="container">
    <section class="text-center pb-1">
        <div class="row pt-5">
            <div class="col-lg-3 col-md-6 mb-r">
                <div class="card card-cascade narrower" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                    <div class="view overlay hm-white-slight">
                        <div class="card-header">
                            <h4 class="my-0 font-weight-normal clrd-font2">Mouse</h4>
                        </div> 
                        <img src="img/iconesindex/mouse.png" class="img-fluid pt-5" style="width: 180px; height: auto;"><p></p>
                    </div>
                    <span class=" mt-5"></span>
                </div>
            </div>

            <c:forEach items="${ctrl_prod.listarProdutos(4,3)}" var="prod">
                <c:if test="${prod != null}">
                    <div class="col-lg-3 col-md-6 mb-r">
                        <div class="card card-cascade narrower" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
                            <div class="view overlay hm-white-slight">
                                <div class="card-header">
                                    <h4 class="my-0 font-weight-normal clrd-font">${prod.nome}</h4>
                                </div> 
                                <img src="img/produtos/${prod.foto1}" class="img-fluid pt-5" style="width: 180px; height: auto;"><p></p>
                                <a href="index.jsp?acao=detalhes&id=${prod.id}" class="btn btn-sm btn-outline-secondary" style="border-color: #04A3FF;">Saiba mais</a>
                            </div>
                            <span class=" mt-3"></span>
                        </div>
                    </div>
                </c:if>
            </c:forEach>                            
        </div>
    </section>
</div>

