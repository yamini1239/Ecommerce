<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

 <script>
    $(document).ready(function(){

        $('.table').DataTable({
            "lengthMenu": [[1,2,3,5,10,-1], [1,2,3,5,10, "All"]]
        });
    });

</script> 
<!-- <script>
$(document).ready(function(){
    $('#myTable').dataTable();
});
</script> -->
  <div class="table-responsive">
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Inventory Page</h1>

            <p class="lead">This is the product inventory page!</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="success">
                <th>Photo Thumb</th>
                <th>Product Name</th>
                <th>Category</th>
                <th>Condition</th>
                <th>Price</th>
                <th>View/Delete/Edit </th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${products}" var="product">
               
                
            <tr >
  <td><img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image" style="width:100%"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} USD</td>
                    <td><a href="<spring:url value="/product/viewProduct/${product.productId}" />"
                    ><span class="glyphicon glyphicon-sunglasses"></span></a>
                        <a href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />"
                        ><span class="glyphicon glyphicon-scissors"></span></a>
                        <a href="<spring:url value="/admin/product/editProduct/${product.productId}" />"
                        ><span class="glyphicon glyphicon-edit"></span></a>
                    </td>
                </tr>
                </c:forEach>
                </tbody>
            
        </table>
        </div>
        </div>
        </div>
<a href="<spring:url value="/admin/product/addProduct" />" class="btn btn-primary">Add Product</a>
        <%@include file="/WEB-INF/views/template/footer.jsp" %>
