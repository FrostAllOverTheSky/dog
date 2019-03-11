<?php
   header("Content-Type:application/json;charset=utf-8");
   $rows=[];
   $rows[]=["label"=>"一月份","value"=>190];
   $rows[]=["label"=>"二月份","value"=>200];
   $rows[]=["label"=>"三月份","value"=>210];
   $rows[]=["label"=>"四月份","value"=>400];
   $rows[]=["label"=>"五月份","value"=>350];
   $rows[]=["label"=>"六月份","value"=>410];
   $rows[]=["label"=>"七月份","value"=>380];
   $rows[]=["label"=>"八月份","value"=>400];
   echo json_encode($rows);
