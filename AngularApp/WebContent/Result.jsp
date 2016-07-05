

<body>
 <div class="col-sm-8" style="background-color:white;border-right: 1px solid black;">
 <br>
 <div class="row" style="margin-left: 16px;">
        <div class="col-sm-12" style="padding-right: 21px;">
        <!-- <hr color="gray" style="height:1px;"> -->
        <br><br>
		 <div id="custom-search-input">
                <div class="input-group col-sm-12">
                    <input type="text" class="form-control input-lg" placeholder="Search" />
                    <span class="input-group-btn">
                        <button class="btn btn-info btn-lg" type="button" style="font-size: 18px;">
                            <i class="glyphicon glyphicon-search"></i>
                        </button>
                    </span>
                </div>
            </div>
         <!--  <a href="file:///C:\Users\arun_abraham06\Desktop\IN101_Fundamentals_of_Insurance_2.pdf">Link 1</a> -->
        </div>
	</div>
      
     
             
              <br>
    
 
   
   <div>
   <ul>
        <div dir-paginate="item in documents| itemsPerPage: 5" current-page="currentPage">
         <!--  <div style="color:red" ng-show="item.cost == 0 && $first">Message</div> -->
          <table style="margin-top: -14px; margin-bottom: -22px;">
 <tr><td> <span style="margin-right: 3em;text-decoration: underline;"> <a href={{item.doc_Path}}><b>Document Title</b></a></span></td>
 <td><span style="margin-right: 32em">
 <img src="http://vignette3.wikia.nocookie.net/dickfiguresfanon/images/3/3a/Two-star-rating.png/revision/latest?cb=20140418000000" style="height:28px;" style="height: 25px;"></span></td>
<td> <a  data-target="#" ng-click="PreviewImage(item.doc_Path)" class="btn btn-success btn-lg" style="font-size:11px !important;">
      <span class="glyphicon glyphicon-preview"></span> Preview
    </a>
     </td></tr></table><br>
   <table style="margin-bottom: -15px;">
  <tr>
  <td>
  <span style="margin-right: 3em">Doc Type: {{item.doc_type}}</span>
  </td>
   <td>
   <span style="margin-right: 3em"> No of Occarances:{{documents.length}}</span>
   </td> 
      <td>
      <span>Bookmark</span>
      </td>
       <td> 
          <span class="btn-label"><i class="glyphicon glyphicon-bookmark" style="margin-right: 20em;"></i></span>
      </td>
<td> Rate-</td>
<td>
<span class="label label-info"></span>
            <div star-rating style="width:120px;" rating="starRating3" ng-click="click3(param)" mouse-hover="mouseHover3(param)" mouse-leave="mouseLeave3(param)">
                 </div>
</td>
</tr>
</table>
<hr color="grey" style="height:1px;">
        </div>
      </ul>
   </div>
    <!--  <nav>
  <ul class="pagination" style="float: right;">
    <li>
      <a href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li>
      <a href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav> -->
 <dir-pagination-controls  max-size="5" direction-links="true" boundary-links="true" ></dir-pagination-controls>
    
 
    <div class="row">
    <div class="col-md-12">
    <footer  data-ng-init="openopt($event, 'wordcloud')">

<div id="div1">
<ul class="tab">
  <li><a data-target="#"  class="tablinks act"  ng-click="openopt($event, 'links')">Related Links</a></li>
  <li><a data-target="#"  active="true"   class="tablinks" ng-click="openopt($event, 'wordcloud')">Related Cloud</a></li>
  <li style="width:250px"><a data-target="#"  class="tablinks" ng-click="openopt($event, 'hierarchy')">Hierarchy Structure</a></li>
</ul>
<div id="links" class="tabcontent" style="height: 150px !important;">
  
  <p><a href="#"> Lorel Ipsum</a> <a href="#" style="margin-left:35px"> Amet Legere Percluis</a> <a href="#" style="margin-left:35px"> Ne nam tantas bonur</a> <br><br> <a href="#" style="margin-left:35px"> Mazem placerat</a> <a href="#" style="margin-left:35px"> Te Integre Labitur</a></p>
</div>


<div id='wordcloud' class="tabcontent"  steps="7" style="width:100% !important;height:150px !important;"></div>
  
  
  
 
<div id="hierarchy" class="tabcontent" style="height: 150px; !important" >
 <!--  <ul style="list-style-type:circle">
  <li>Lorem Epsum Dolor
  <ul style="list-style-type:circle">
  <li>Lorem Epsum Dolor
   <ul style="list-style-type:circle">
  <li>Lorem Epsum Dolor
  </ul>
  </ul>
  </ul> -->
  
  <eu-tree tree-data="roleList" node-id="roleId" node-name="roleName" node-state="expand" 
  expand-icon="http://cfile23.uf.tistory.com/image/205B973A50C13F4B19D9BD" 
  collapse-icon="http://cfile23.uf.tistory.com/image/1459193A50C13F4B1B05FB"
   child-icon="http://cfile23.uf.tistory.com/image/165B663A50C13F4B196CCA"></eu-tree>
  
</div>

</div>

</footer>
</div>
</div>
    </div>

 
 <div class="col-md-4">
    <table>
    <tr>
     <td>
                        <img src=" http://www.junior-broker.com/files/userfiles/images/9.7a%20Cisco%20WebEx%20Meetings%20icon.png" style="height: 39px; margin-right: 2px;"> </td>
  <td>  <h2>Document Name</h2></td>
    </tr>
    </table>
    <br>
    <div style="margin-top: -23px;">
    <p >Author : <u><a href="#" style="color:blue">John Parker</a></u></p>
    <p style="color: dimgray;">505 KB</p>
    </div>
    <p style="color: dimgray;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Si quidem, inquit, tollerem, sed relinquo. Quae animi affectio suum cuique tribuens atque han
    </p>
    <div>
    <table>
    <tr>
    <td>
    <img src="http://vignette3.wikia.nocookie.net/dickfiguresfanon/images/3/3a/Two-star-rating.png/revision/latest?cb=20140418000000" style="height:28px;">
  </td>
  <td><h6 style="color: dimgray; margin-left: 8px; font-size: 15px !important">(25 Users)</h6></td>
  </tr>
   </table>
    </div>
    <h5 style="color: dimgray; margin-top: 15px !important;">WebEx Recording Preview</h5>
    
    <div style="clear:both" >
        <!-- <input type="file" id="f1" name="files"/>
        <input type="button" onclick="PreviewImage();"/> -->
          </div>
            <div id="video" ></div>
   
    
    </div>
    
   
    
</body>
