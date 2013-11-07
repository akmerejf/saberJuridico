// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .
// JavaScript Document

var xmlHttp

function mostraconteudo(str) {
xmlHttp=GetXmlHttpObject()
if (xmlHttp==null) {
alert ("Browser does not support HTTP Request")
return
}

if(str=='apresenta'){
var url="apresentacao.html";
}
if(str=='editorial'){
var url="editorial.html";
}
if(str=='volumes'){
var url="edicoes.html";
}
if(str=='busca'){
var url="busca.html";
}
if(str=='contato'){
var url="contato.html";
}
if(str=='instrucoes'){
var url="instrucoes.html";
}
if(str=='conselho'){
var url="conselho.html";
}
if(str=='upload'){
var url="upload.html";
}

url=url+"?sid="+Math.random()
xmlHttp.onreadystatechange=stateChanged
xmlHttp.open("GET",url,true)
xmlHttp.send(null)
}
function stateChanged() {
if (xmlHttp.readyState==1 || xmlHttp.readyState=="complete") {
document.getElementById("conteudo").innerHTML="<h1>Carregando...</h1>"
}
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete") {
document.getElementById("conteudo").innerHTML=xmlHttp.responseText
}
}


function BuscaAutor(autor) {
xmlHttp=GetXmlHttpObject()
if (xmlHttp==null) {
alert ("Browser does not support HTTP Request")
return
}

var url="resultado.php";
url=url+"?AUTOR="+autor
url=url+"&sid="+Math.random()
xmlHttp.onreadystatechange=StatusChanged
xmlHttp.open("POST",url,true)
xmlHttp.send(null)
}
function StatusChanged() {
if (xmlHttp.readyState==1 || xmlHttp.readyState=="complete") {
document.getElementById("resultado").innerHTML="<h1>Pesquisando...</h1>"
}
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete") {
document.getElementById("resultado").innerHTML=xmlHttp.responseText
}
}

function uploadArtigo(autor) {
xmlHttp=GetXmlHttpObject()
if (xmlHttp==null) {
alert ("Browser does not support HTTP Request")
return
}

var url="uploaded.php";
url=url+"?AUTOR="+autor
url=url+"&sid="+Math.random()
xmlHttp.onreadystatechange=StatusChanged
xmlHttp.open("POST",url,true)
xmlHttp.send(null)
}
function StatusChanged() {
if (xmlHttp.readyState==1 || xmlHttp.readyState=="complete") {
document.getElementById("resultado").innerHTML="<h1>Pesquisando...</h1>"
}
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete") {
document.getElementById("resultado").innerHTML=xmlHttp.responseText
}
}

function SelecEdicao(edicaoN) {
xmlHttp=GetXmlHttpObject()
if (xmlHttp==null) {
alert ("Browser does not support HTTP Request")
return
}

var url="mostraedicao.php.htm"/*tpa=http://fabsoft.cesupa.br/saber/mostraedicao.php*/;
url=url+"?EDICAON="+edicaoN
url=url+"&sid="+Math.random()
xmlHttp.onreadystatechange=StatusChanged
xmlHttp.open("POST",url,true)
xmlHttp.send(null)
}
function StatusChanged() {
if (xmlHttp.readyState==1 || xmlHttp.readyState=="complete") {
document.getElementById("resultado").innerHTML="<h1>Pesquisando...</h1>"
}
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete") {
document.getElementById("resultado").innerHTML=xmlHttp.responseText
}
}

function SelecEdicaoRevista(edicaoN) {
xmlHttp=GetXmlHttpObject()
if (xmlHttp==null) {
alert ("Browser does not support HTTP Request")
return
}

var url="mostraedicao.php";
url=url+"?EDICAON="+edicaoN
url=url+"&sid="+Math.random()
xmlHttp.onreadystatechange=EscolheChanged
xmlHttp.open("GET",url,true)
xmlHttp.send(null)
}
function EscolheChanged() {
if (xmlHttp.readyState==1 || xmlHttp.readyState=="complete") {
document.getElementById("EDICAO").innerHTML="<h1>Pesquisando...</h1>"
}
if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete") {
document.getElementById("EDICAO").innerHTML=xmlHttp.responseText
}
}


function GetXmlHttpObject() {
var xmlHttp=null;
try {
// Firefox, Opera 8.0+, Safari
xmlHttp=new XMLHttpRequest();
} catch (e) {
//Internet Explorer
try {
xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
} catch (e) {
xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
}
}
return xmlHttp;
}
