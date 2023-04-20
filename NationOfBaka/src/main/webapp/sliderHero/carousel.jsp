 <h3 class="text-center mb-3">Les News du moment</h3>	
  <!-- Hero Section Begin -->
<!--     <section class="hero">
        <div class="container">
            <div class="hero__slider owl-carousel">
                <div class="hero__items set-bg" data-setbg="assets/img/hero/hero-1.jpg">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="hero__text">
                                <div class="label">Adventure</div>
                                <h2>Fate / Stay Night: Unlimited Blade Works</h2>
                                <p>After 30 days of travel across the world...</p>
                                <a href="#"><span>Watch Now</span> <i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="hero__items set-bg" data-setbg="./assets/img/hero/hero-1.jpg">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="hero__text">
                                <div class="label">Adventure</div>
                                <h2>Fate / Stay Night: Unlimited Blade Works</h2>
                                <p>After 30 days of travel across the world...</p>
                                <a href="#"><span>Watch Now</span> <i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="hero__items set-bg" data-setbg="./assets/img/hero/hero-1.jpg">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="hero__text">
                                <div class="label">Adventure</div>
                                <h2>Fate / Stay Night: Unlimited Blade Works</h2>
                                <p>After 30 days of travel across the world...</p>
                                <a href="#"><span>Watch Now</span> <i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>    -->
    <section class="hero">
  <div class="container">
    <div class="hero__slider owl-carousel">
      <c:forEach var="item" items="${articleR}">
        <div class="hero__items set-bg" data-setbg="./assets/img/listeM/${item.cover_image}">
          <div class="row">
            <div class="col-lg-6">
              <div class="hero__text">
                <div class="label">${item}</div>
                <h2>${item.title}</h2>
                <p>${item.synopsis}</p>
                <a href="#"><span>Watch Now</span> <i class="fa fa-angle-right"></i></a>
              </div>
            </div>
          </div>
        </div>
      </c:forEach>
    </div>
  </div>
</section>       
       <!-- Hero Section End -->