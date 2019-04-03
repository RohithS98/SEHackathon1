<?php
 $connect = mysqli_connect("localhost", "root", "", "disaster");
 if(!$connect){
     echo "<script type='text/javascript'>alert('Database failed');</script>";
     die('Could not connect: '.mysqli_connect_error());
 }
 $output = '';
 if(isset($_POST)){
    if($_POST['type'] == 'any')
        $sql = "SELECT * FROM disasterPredicted";
    else
        $sql = "SELECT * FROM disasterPredicted WHERE TYPE = '".$_POST['type']."'";
 }
 else{
     $sql = "SELECT * FROM disasterPredicted";
 }
$result = mysqli_query($connect, $sql);
 $output .= '
      <div class="table-responsive">
           <table class="table table-bordered">
                <tr>
                     <th width="15%">Type </th>
                     <th width="20%">Lat </th>
                     <th width="20%">Lon </th>
                     <th width="20%">Severity</th>
                     <th width="25%">Predicted Date</th>
                </tr>';
 $rows = mysqli_num_rows($result);
 $rowno = 0;
 if($rows > 0)
 {
      while($row = mysqli_fetch_array($result))
      {
           $output .= '
                <tr>
                     <td class="type" data-id1="'.$rowno.'">'.$row["type"].'</td>
                     <td class="Date " data-id2="'.$rowno.'" >'.$row["lat"].'</td>
                     <td class="Status " data-id3="'.$rowno.'">'.$row["lon"].'</td>
                     <td class="Date " data-id4="'.$rowno.'" >'.$row["severity"].'</td>
		             <td class="Status " data-id5="'.$rowno.'">'.$row["predicteddate"].'</td>
                     </tr>
           ';
           $rowno += 1;
      }
 }
 $output .= '</table>
      </div>';
 echo $output;
 ?>
