<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@page import="com.buyace.core.dao.DealsDao"%>
<%@page import="com.buyace.core.beans.Deals"%>
<style>
.btn-teaser{
    position: absolute;
    bottom: 5%;
    right: 5%;
    left: 5%;
}
</style>
<div class="container mt-5">
    <h2 class="h2 text-dark mb-0 display4 text-center"> Offers at a glance!</h2>
    <div class="row">
        <%
            List<Deals> list1 = DealsDao.fetchDeals("teaser");
            if(list1.size()!=0){
            int index = 0;
            ListIterator<Deals> Iterator = list1.listIterator();
                while(Iterator.hasNext() && index < 3){
                    Deals deals = Iterator.next();
                    out.print("<div class='col-sm-4'>");
                    out.print("<div class='card text-white mx-2 my-5' style='border-radius:10px;background:black;'>");
                    out.print("<img src="+deals.getImage()+" class='card-img' style='position:relative;right:-20px'> ");
                    out.print("<div class='card-img-overlay'>");
                    out.print("<small style='font-size:10px;'><i>"+deals.getLable()+"</i></small>");
                    out.print("<h2 class='card-title h2 w-50'>"+deals.getTitle()+"</h2>");
                    out.print("<p class='card-text w-50'>"+deals.getDescription()+"</p>");
                    out.print("<a href="+deals.getButtonUrl()+" class='btn btn-light btn-teaser'>"+deals.getButtonText()+"</a>");
                    out.print("</div></div></div>");
                    index++;
                }
            }
            else{
                out.print("<h2 class='w-100 text-center h2'><b class='text-dark'> Offers not available.!</b></h2>");
            }
        %>
    </div>
</div>