!function r(e,n,t){function o(i,f){if(!n[i]){if(!e[i]){var a="function"==typeof require&&require;if(!f&&a)return a(i,!0);if(u)return u(i,!0);var c=new Error("Cannot find module '"+i+"'");throw c.code="MODULE_NOT_FOUND",c}var p=n[i]={exports:{}};e[i][0].call(p.exports,function(r){var n=e[i][1][r];return o(n?n:r)},p,p.exports,r,e,n,t)}return n[i].exports}for(var u="function"==typeof require&&require,i=0;i<t.length;i++)o(t[i]);return o}({1:[function(r,e,n){var t,o,u,i,f;o=$("body"),i=$("#loader"),u=function(){return o.removeClass("loader_body"),i.fadeOut()},t=function(){},$.ajax({url:"projects.json"}).done(function(r){return setTimeout(function(){return u()},1e3),f(r)}),f=function(r){var e,n,t,o,u;e=$("#projects"),u=Handlebars.compile($("#project-template").html()),o=[];for(n in r)t=r[n],o.push(e.append(u(t)));return o}},{}]},{},[1]);