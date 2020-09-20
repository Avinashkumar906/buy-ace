<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@page import="com.buyace.core.dao.DealsDao"%>
<%@page import="com.buyace.core.beans.Deals"%>
<div class="w-100 mb-40">
    <div class="carousel">
        <%
    	    List<Deals> list = DealsDao.fetchDeals("carousel");
    		if(list.size()!=0){
    	    ListIterator<Deals> Iterator = list.listIterator();
    		    while(Iterator.hasNext()){
    		    	Deals deals = Iterator.next();
    		    	out.print("<div class=\"card bg-dark text-white\" style=\"height:90vh;\">");
    				out.print("<img src="+deals.getImage()+" class=\"h-100 ml-auto mr-5 p-4\">");
    		    	out.print("<div class=\"card-img-overlay\">");
    		    	out.print("<p class=\"card-text mb-0\">"+deals.getTitle()+"</p>");
    		    	out.print("<span class=\"card-title h2 d-block\">"+deals.getLable()+"</span>");
    		    	out.print("<p class=\"card-text my-2\">"+deals.getDescription()+"</p>");
    		    	out.print("<a href="+deals.getButtonUrl()+" class=\"btn btn-light\">"+deals.getButtonText()+"</a>");
    	    		out.print("</div></div>");
    	    	}
    		}
    		else{
    			out.print("<h2 class='w-100 text-center h2 mt-5'><b class='text-dark'> Deals not available.!</b></h2>");
    		}
        %>
    </div>
</div>