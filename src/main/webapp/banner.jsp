<div class="container mb-5">
  <h2 class="h2 text-dark mb-5display4 text-center">What's New on Phones!</h2>
  <div class="row my-4">
    <div class="col-12">
      <div class="card">
        <div class="row no-gutters">
        <%
            List<Deals> banner = DealsDao.fetchDeals("banner");
            if(banner.size()!=0){
            ListIterator<Deals> Iterator = banner.listIterator();
                while(Iterator.hasNext()){
                    Deals deals = Iterator.next();
                    out.print("<div class='col-md-4 py-4 text-center' style='max-height:350px;'>");
                    out.print("<img src="+deals.getImage()+" class='card-img w-auto' height='100%'></div>");
                    out.print("<div class='col-md-8'><div class='card-body'>");
                    out.print("<h2 class='card-title my-4 h2'>"+deals.getTitle()+"</h2>");
                    out.print("<h4 class='card-text h4'>"+deals.getDescription()+"</h4>");
                    out.print("<h5 class='card-text my-3'><small class='text-muted'>"+deals.getLable()+"</small></h5>");
                    out.print("<a href="+deals.getButtonUrl()+" class='btn btn-dark mt-2'>"+deals.getButtonText()+"</a>");
                    out.print("</div></div>");
                }
            }
            else{
                out.print("<h2 class='w-100 text-center h2'><b class='text-dark'> Banner not available.!</b></h2>");
            }
        %>
        </div>
      </div>
    </div>
  </div>
</div>