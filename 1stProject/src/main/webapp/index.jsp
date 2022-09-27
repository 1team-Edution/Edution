<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<head>
<meta name="viewport" content="width=device-width"><meta charset="utf-8">
<title class="jsx-1549916940 jsx-1382635649">Notion (노션) – 모든 팀을 위한 하나의 워크스페이스</title>
<meta name="description" content="Notion은 단순한 워드프로세서가 아닙니다. 내 스타일에 맞게 커스텀해서 사용하세요." class="jsx-1549916940 jsx-1382635649">

<style id="__jsx-2971364727">.button-link.jsx-2971364727{-webkit-text-decoration:none;
text-decoration:none;
color:inherit}
.button.jsx-2971364727{
border-radius:5px;

}
.button.jsx-2971364727:active, .button.jsx-2971364727:focus{outline:none}
.full-width.jsx-2971364727{width:100%}
.button-size-s.jsx-2971364727{padding:0.3125rem 0.6875rem;
font-size:0.84375rem;
line-height:1.1875rem;
letter-spacing:[object Object];
font-weight:619}
.button-size-m.jsx-2971364727{padding:0.4375rem 0.8125rem;
font-size:0.84375rem;
line-height:1.1875rem;
letter-spacing:[object Object];
font-weight:619}
.button-size-l.jsx-2971364727{padding:0.375rem 0.875rem 0.4375rem 0.875rem;
font-size:1rem;
line-height:1.4375rem;
letter-spacing:[object Object];
font-weight:570}
.primary.jsx-2971364727{color:#FFFFFF;
background: linear-gradient(
							180deg,
							rgba(255, 255, 255, 0.04) 0%,
							rgba(255, 255, 255, 0) 100%
						),
						#e16259;
box-shadow:0px 4px 9px rgba(0, 0, 0, 0.0471111), 0px 1.54074px 2.86667px rgba(0, 0, 0, 0.0728889), 0px 0.325926px 0.733333px rgba(0, 0, 0, 0.12)}
.primary.jsx-2971364727:hover{background: linear-gradient(
							180deg,
							rgba(255, 255, 255, 0.04) 0%,
							rgba(255, 255, 255, 0) 100%
						),
						linear-gradient(0deg, rgba(0, 0, 0, 0.04), rgba(0, 0, 0, 0.04)),
						#e16259;
background-blend-mode:normal, multiply, normal;
box-shadow:0px 4px 9px rgba(0, 0, 0, 0.0471111), 0px 1.54074px 2.86667px rgba(0, 0, 0, 0.0728889), 0px 0.325926px 0.733333px rgba(0, 0, 0, 0.12)}
.primary.jsx-2971364727:active{background: linear-gradient(
							180deg,
							rgba(255, 255, 255, 0.04) 0%,
							rgba(255, 255, 255, 0) 100%
						),
						linear-gradient(0deg, rgba(0, 0, 0, 0.09), rgba(0, 0, 0, 0.09)),
						#e16259;
background-blend-mode:normal, multiply, normal;
box-shadow:inset 0px 5px 3px rgba(0, 0, 0, 0.015)}
.secondary.jsx-2971364727{color:#EB5757;
background: linear-gradient(
							180deg,
							rgba(28, 28, 28, 0) 0%,
							rgba(28, 28, 28, 0.0175) 100%
						),
						linear-gradient(
							0deg,
							rgba(225, 98, 89, 0.085),
							rgba(225, 98, 89, 0.085)
						),
						#ffffff;
border:1px solid rgba(225, 98, 89, 0.195);
box-shadow:0px 4px 9px rgba(0, 0, 0, 0.03), 0px 0.8px 1.4625px rgba(0, 0, 0, 0.015)}
.secondary.jsx-2971364727:hover{background: linear-gradient(
							180deg,
							rgba(28, 28, 28, 0) 0%,
							rgba(28, 28, 28, 0.0175) 100%
						),
						linear-gradient(0deg, rgba(0, 0, 0, 0.0075), rgba(0, 0, 0, 0.0075)),
						linear-gradient(
							0deg,
							rgba(225, 98, 89, 0.1),
							rgba(225, 98, 89, 0.1)
						),
						#ffffff;
background-blend-mode:normal, multiply, normal, normal;
border:1px solid rgba(225, 98, 89, 0.195);
box-shadow:0px 4px 9px rgba(0, 0, 0, 0.03), 0px 0.8px 1.4625px rgba(0, 0, 0, 0.015)}
.secondary.jsx-2971364727:active{background: linear-gradient(
							180deg,
							rgba(28, 28, 28, 0) 0%,
							rgba(28, 28, 28, 0.0175) 100%
						),
						linear-gradient(0deg, rgba(0, 0, 0, 0.02), rgba(0, 0, 0, 0.02)),
						linear-gradient(
							0deg,
							rgba(225, 98, 89, 0.125),
							rgba(225, 98, 89, 0.125)
						),
						#ffffff;
background-blend-mode:normal, multiply, normal, normal;
border:1px solid rgba(225, 98, 89, 0.17);
box-shadow:inset 0px 5px 3px rgba(0, 0, 0, 0.01)}
.tertiary.jsx-2971364727{color:var(--text-color-regular);
background: linear-gradient(
							180deg,
							rgba(28, 28, 28, 0) 0%,
							rgba(28, 28, 28, 0.005) 100%
						),
						rgba(255, 255, 255, 0.77);
background-blend-mode:normal, lighten;
border:1px solid rgba(0, 0, 0, 0.095);
box-shadow:0px 3px 9px rgba(0, 0, 0, 0.03), 0px 0.7px 1.4625px rgba(0, 0, 0, 0.015);
backdrop-filter:blur(25px);
-webkit-backdrop-filter:blur(25px)}
.tertiary.jsx-2971364727:hover{background: linear-gradient(
							180deg,
							rgba(28, 28, 28, 0) 0%,
							rgba(28, 28, 28, 0.005) 100%
						),
						linear-gradient(0deg, rgba(0, 0, 0, 0.01), rgba(0, 0, 0, 0.01)),
						rgba(255, 255, 255, 0.77);
background-blend-mode:normal, normal, lighten;
border:1px solid rgba(0, 0, 0, 0.095);
box-shadow:0px 3px 9px rgba(0, 0, 0, 0.03), 0px 0.7px 1.4625px rgba(0, 0, 0, 0.015)}
.tertiary.jsx-2971364727:active{background: linear-gradient(
							180deg,
							rgba(28, 28, 28, 0) 0%,
							rgba(28, 28, 28, 0.005) 100%
						),
						linear-gradient(0deg, rgba(0, 0, 0, 0.025), rgba(0, 0, 0, 0.025)),
						rgba(255, 255, 255, 0.77);
background-blend-mode:normal, normal, lighten;
border:1px solid rgba(0, 0, 0, 0.095);
box-shadow:inset 0px 5px 3px rgba(0, 0, 0, 0.0075)}
.dark.jsx-2971364727{color:#f8f5f1;
background:rgba(54, 53, 47, 0.72);
border:1px solid rgba(54, 53, 47, 0.4)}
.dark.jsx-2971364727:hover{background:rgba(54, 53, 47, 1)}
.dark.jsx-2971364727:active, .dark.jsx-2971364727:focus{background:rgba(54, 53, 47, 1)}
.blue.jsx-2971364727{color:#FFFFFF;
background: linear-gradient(
							180deg,
							rgba(255, 255, 255, 0.04) 0%,
							rgba(255, 255, 255, 0) 100%
						),
						#2383e2}
.blue.jsx-2971364727:hover{background: linear-gradient(
							180deg,
							rgba(255, 255, 255, 0.04) 0%,
							rgba(255, 255, 255, 0) 100%
						),
						linear-gradient(0deg, rgba(0, 0, 0, 0.04), rgba(0, 0, 0, 0.04)),
						#2383e2}
.blue.jsx-2971364727:active, .blue.jsx-2971364727:focus{background: linear-gradient(
							180deg,
							rgba(255, 255, 255, 0.04) 0%,
							rgba(255, 255, 255, 0) 100%
						),
						linear-gradient(0deg, rgba(0, 0, 0, 0.09), rgba(0, 0, 0, 0.09)),
						#2383e2}
.light.jsx-2971364727{background:#ffffff;
box-shadow:0px 1px 2px rgba(0, 0, 0, 0.03), inset 0 0 0 1px rgba(0, 0, 0, 0.1)}
.light.jsx-2971364727:hover{background:#fafafa}
.light.jsx-2971364727:active, .light.jsx-2971364727:focus{background:#f1f1f1}
.simple.jsx-2971364727{font-weight:inherit;
color:inherit;
-webkit-transition:background 150ms;
transition:background 150ms;
height:auto;
padding:6px}
.simple.jsx-2971364727:hover{background:rgba(0,0,0,0.03)}
.simple.jsx-2971364727:hover, .simple.jsx-2971364727:focus-within{background:rgba(0,0,0,0.06);
outline:none}
.button-size-s.has-arrow-right.jsx-2971364727{padding-right:0.5rem}
.button-size-m.has-arrow-right.jsx-2971364727{padding-right:0.6875rem}
.button-size-l.has-arrow-right.jsx-2971364727{padding-right:0.75rem}
.has-arrow-right.jsx-2971364727::after, .has-arrow-down.jsx-2971364727::after{display:inline-block;
-webkit-text-decoration:none;
text-decoration:none;
margin-left:0.25em}
.has-arrow-right.jsx-2971364727::after{content:" →"}
.has-arrow-down.jsx-2971364727::after{content:" ↓"}
.has-arrow-up.jsx-2971364727::after{content:" ↑"}
.has-arrow-left.jsx-2971364727::before{content:"← ";
margin-left:0;
margin-right:0.25em}</style>


<style id="__jsx-3643650412">.hoverable.jsx-3643650412{display:block;
border-radius:5px;
padding:0px 0px;
-webkit-text-decoration:none;
text-decoration:none}
.hoverable.jsx-3643650412:hover, .hoverable.jsx-3643650412:focus-within{background:rgba(0,0,0,0.03);
outline:none;
-webkit-transition:none;
transition:none}
.hoverable.jsx-3643650412:focus, .clickable.jsx-3643650412:active{background:rgba(0,0,0,0.06);
outline:none;
-webkit-transition:none;
transition:none}
.is-active.jsx-3643650412{background:rgba(0,0,0,0.06);
-webkit-transition:150ms background linear;
transition:150ms background linear}
.full-width.jsx-3643650412{width:100%}
.has-action.jsx-3643650412{cursor:pointer}
.has-border.jsx-3643650412{border:1px solid rgba(0, 0, 0, 0.1)}</style>


<style id="__jsx-1177128220">.nav-item.jsx-1177128220{font-weight:544;
font-size:15px;
position:relative}
.label.jsx-1177128220{display:block;
padding:0 10px;
height:30px;
line-height:31px}
.has-menu.jsx-1177128220 .label.jsx-1177128220{padding-right:24px}
.has-menu.jsx-1177128220 .label.jsx-1177128220::after{content:"";
display:block;
width:8px;
height:6px;
background:url(/front-static/shared/icons/nav-caret.svg);
position:absolute;
top:50%;
margin-top:-2px;
right:10px}
.popup.jsx-1177128220{box-shadow:0px 4px 18px rgba(0, 0, 0, 0.04), 0px 2.025px 7.84688px rgba(0, 0, 0, 0.027), 0px 0.8px 2.925px rgba(0, 0, 0, 0.02), 0px 0.175px 1.04062px rgba(0, 0, 0, 0.013);
border-radius:5px;
background:#fff;
position:absolute;
left:0;
top:100%;
text-align:left;
z-index:1000;
visibility:hidden;
visibility:0;
opacity:0;
-webkit-transform:scale(0.97);
-moz-transform:scale(0.97);
-ms-transform:scale(0.97);
transform:scale(0.97);
-webkit-transition:visibility 0s, opacity 150ms ease, -webkit-transform 150ms ease;
transition:visibility 0s, opacity 150ms ease, transform 150ms ease;
transform-origin:top left}
.nav-item.jsx-1177128220:hover .popup.jsx-1177128220, .nav-item.jsx-1177128220:focus-within .popup.jsx-1177128220{visibility:visible;
opacity:1;
-webkit-transform:scale(1);
-moz-transform:scale(1);
-ms-transform:scale(1);
transform:scale(1)}
.has-menu.jsx-1177128220:hover .label.jsx-1177128220::after{-webkit-transform:rotate(180deg);
-moz-transform:rotate(180deg);
-ms-transform:rotate(180deg);
transform:rotate(180deg)}
@media prefers-reduced-motion {.popup.jsx-1177128220{-webkit-transition:none;
transition:none}}</style>

<style id="__jsx-2529691271">.menu.jsx-2529691271{width:auto;
display:-webkit-box;
display:-webkit-flex;
display:-ms-flexbox;
display:flex}
.menu-section.jsx-2529691271:not(:first-child){border-left:1px solid var(--border-color-regular)}</style><style id="__jsx-bfc18ca12fb5954b">.nav-list.jsx-bfc18ca12fb5954b{list-style:none;
display:-webkit-box;
display:-webkit-flex;
display:-ms-flexbox;
display:flex;
-webkit-align-items:center;
-webkit-box-align:center;
-ms-flex-align:center;
align-items:center;
margin:0}</style>

<style id="__jsx-1028178840">.nav-right.jsx-1028178840{display:-webkit-box;
display:-webkit-flex;
display:-ms-flexbox;
display:flex;
-webkit-align-items:center;
-webkit-box-align:center;
-ms-flex-align:center;
align-items:center;
height:100%}
.divider.jsx-1028178840{width:1px;
background:var(--border-color-regular);
height:20px;
margin:0 10px}
.nav-list.jsx-1028178840{list-style:none;
display:-webkit-box;
display:-webkit-flex;
display:-ms-flexbox;
display:flex;
-webkit-align-items:center;
-webkit-box-align:center;
-ms-flex-align:center;
align-items:center;
margin:0}
.cta-item.jsx-1028178840{padding-left:10px}
.non-english.jsx-1028178840 .nav-list-sales.jsx-1028178840, .non-english.jsx-1028178840 .divider.jsx-1028178840{display:none}
@media screen and (min-width:1380px) {.non-english.jsx-1028178840 .nav-list-sales.jsx-1028178840{display:-webkit-box;
display:-webkit-flex;
display:-ms-flexbox;
display:flex}
.non-english.jsx-1028178840 .divider.jsx-1028178840{display:block}}</style><style id="__jsx-846203990">.nav.jsx-846203990{display:-webkit-box;
display:-webkit-flex;
display:-ms-flexbox;
display:flex;
-webkit-align-items:center;
-webkit-box-align:center;
-ms-flex-align:center;
align-items:center;
-webkit-justify-content:space-between;
justify-content:space-between;
width:100%;
height:100%}</style>

<style id="__jsx-1865826807">.mobile-nav.jsx-1865826807{position:fixed;
top:59px;
left:0;
width:100vw;
height:calc(100vh - 59px);
display:none;
-webkit-align-items:center;
-webkit-box-align:center;
-ms-flex-align:center;
align-items:center;
-webkit-justify-content:center;
justify-content:center;
z-index:200;
background:#FFFEFC}
.mobile-nav-inner.jsx-1865826807{height:100%}
.mobile-nav-inner.jsx-1865826807::before{content:"";
display:block;
margin:0 24px;
height:1px;
background:var(--border-color-regular)}
.mobile-nav-scrollable.jsx-1865826807{overflow-y:auto;
height:100%;
padding:0 24px;
padding-bottom:140px}
.is-open.jsx-1865826807{display:block}
.actions.jsx-1865826807{padding-top:26px;
display:grid;
grid-gap:16px}
@media screen and (min-width:600px) {.mobile-nav-scrollable.jsx-1865826807{width:88vw;
padding:0;
margin:0 auto}
.mobile-nav-inner.jsx-1865826807::before{margin:0 6vw}}</style>

<style id="__jsx-2604928324">
.header.jsx-2604928324{position:fixed;
width:100%;
display:-webkit-box;
display:-webkit-flex;
display:-ms-flexbox;
display:flex;
-webkit-flex-direction:column-reverse;
-ms-flex-direction:column-reverse;
flex-direction:column-reverse;
background:#FFFEFC;
z-index:100}
.inner.jsx-2604928324{display:-webkit-box;
display:-webkit-flex;
display:-ms-flexbox;
display:flex;
-webkit-align-items:center;
-webkit-box-align:center;
-ms-flex-align:center;
align-items:center;
-webkit-box-pack:justify;
-webkit-justify-content:space-between;
justify-content:space-between;
width:100%;
padding:0 24px;
max-width:1392px;
margin:0 auto;
height:60px;
-webkit-transition:250ms height;
transition:250ms height}
.inner.jsx-2604928324::after{content:"";
position:absolute;
bottom:0;
display:block;
width:calc(100% - 48px);
max-width:1392px;
height:1px;
background:transparent;
-webkit-transition:250ms height;
transition:250ms height}
.is-scrolled.jsx-2604928324 .inner.jsx-2604928324{height:60px}
.is-scrolled.jsx-2604928324 .inner.jsx-2604928324::after{background:var(--border-color-regular)}
.logo-wrap.jsx-2604928324{display:-webkit-box;
display:-webkit-flex;
display:-ms-flexbox;
display:flex;
-webkit-align-items:center;
-webkit-box-align:center;
-ms-flex-align:center;
align-items:center}
.logo.jsx-2604928324{display:block;
height:30px;
margin-top:-1px}
.spacer.jsx-2604928324{width:100%;
height:60px}
.desktop-actions.jsx-2604928324{display:none}
.mobile-actions.jsx-2604928324{margin-right:-8px;
display:-webkit-box;
display:-webkit-flex;
display:-ms-flexbox;
display:flex}
.mobile-cta.jsx-2604928324{margin-right:8px}
@media screen and (min-width:600px) {.inner.jsx-2604928324, .inner.jsx-2604928324::after{width:88vw;
padding:0}}
@media screen and (min-width:1080px) {.header.jsx-2604928324{-webkit-flex-direction:column;
-ms-flex-direction:column;
flex-direction:column}
.inner.jsx-2604928324, .spacer.jsx-2604928324{height:80px}
.is-scrolled.jsx-2604928324 .inner.jsx-2604928324{height:60px}
.desktop-actions.jsx-2604928324{display:-webkit-box;
display:-webkit-flex;
display:-ms-flexbox;
display:flex;
-webkit-align-items:center;
-webkit-box-align:center;
-ms-flex-align:center;
align-items:center;
-webkit-box-flex:1;
-webkit-flex-grow:1;
-ms-flex-positive:1;
flex-grow:1;
margin-left:20px}
.mobile-actions.jsx-2604928324{display:none}}
@media screen and (min-width:1280px) {.inner.jsx-2604928324, .inner.jsx-2604928324::after{width:87vw}}</style><style id="__jsx-1333353861">.global-grid-item{grid-column-start:auto;
grid-column-end:span 12}
@media screen and (min-width:375px) {.global-grid-item-span-xs-1{grid-column-end:span 1}
.global-grid-item-span-xs-2{grid-column-end:span 2}
.global-grid-item-span-xs-3{grid-column-end:span 3}
.global-grid-item-span-xs-4{grid-column-end:span 4}
.global-grid-item-span-xs-5{grid-column-end:span 5}
.global-grid-item-span-xs-6{grid-column-end:span 6}
.global-grid-item-span-xs-7{grid-column-end:span 7}
.global-grid-item-span-xs-8{grid-column-end:span 8}
.global-grid-item-span-xs-9{grid-column-end:span 9}
.global-grid-item-span-xs-10{grid-column-end:span 10}
.global-grid-item-span-xs-11{grid-column-end:span 11}
.global-grid-item-span-xs-12{grid-column-end:span 12}
.global-grid-item-start-xs-1{grid-column-start:1}
.global-grid-item-start-xs-2{grid-column-start:2}
.global-grid-item-start-xs-3{grid-column-start:3}
.global-grid-item-start-xs-4{grid-column-start:4}
.global-grid-item-start-xs-5{grid-column-start:5}
.global-grid-item-start-xs-6{grid-column-start:6}
.global-grid-item-start-xs-7{grid-column-start:7}
.global-grid-item-start-xs-8{grid-column-start:8}
.global-grid-item-start-xs-9{grid-column-start:9}
.global-grid-item-start-xs-10{grid-column-start:10}
.global-grid-item-start-xs-11{grid-column-start:11}
.global-grid-item-start-xs-12{grid-column-start:12}
.global-grid-item-order-xs-1{-webkit-order:1;
-ms-flex-order:1;
order:1}
.global-grid-item-order-xs-2{-webkit-order:2;
-ms-flex-order:2;
order:2}
.global-grid-item-order-xs-3{-webkit-order:3;
-ms-flex-order:3;
order:3}
.global-grid-item-order-xs-4{-webkit-order:4;
-ms-flex-order:4;
order:4}
.global-grid-item-order-xs-5{-webkit-order:5;
-ms-flex-order:5;
order:5}
.global-grid-item-order-xs-6{-webkit-order:6;
-ms-flex-order:6;
order:6}
.global-grid-item-order-xs-7{-webkit-order:7;
-ms-flex-order:7;
order:7}
.global-grid-item-order-xs-8{-webkit-order:8;
-ms-flex-order:8;
order:8}
.global-grid-item-order-xs-9{-webkit-order:9;
-ms-flex-order:9;
order:9}
.global-grid-item-order-xs-10{-webkit-order:10;
-ms-flex-order:10;
order:10}
.global-grid-item-order-xs-11{-webkit-order:11;
-ms-flex-order:11;
order:11}
.global-grid-item-order-xs-12{-webkit-order:12;
-ms-flex-order:12;
order:12}}
@media screen and (min-width:600px) {.global-grid-item-span-s-1{grid-column-end:span 1}
.global-grid-item-span-s-2{grid-column-end:span 2}
.global-grid-item-span-s-3{grid-column-end:span 3}
.global-grid-item-span-s-4{grid-column-end:span 4}
.global-grid-item-span-s-5{grid-column-end:span 5}
.global-grid-item-span-s-6{grid-column-end:span 6}
.global-grid-item-span-s-7{grid-column-end:span 7}
.global-grid-item-span-s-8{grid-column-end:span 8}
.global-grid-item-span-s-9{grid-column-end:span 9}
.global-grid-item-span-s-10{grid-column-end:span 10}
.global-grid-item-span-s-11{grid-column-end:span 11}
.global-grid-item-span-s-12{grid-column-end:span 12}
.global-grid-item-start-s-1{grid-column-start:1}
.global-grid-item-start-s-2{grid-column-start:2}
.global-grid-item-start-s-3{grid-column-start:3}
.global-grid-item-start-s-4{grid-column-start:4}
.global-grid-item-start-s-5{grid-column-start:5}
.global-grid-item-start-s-6{grid-column-start:6}
.global-grid-item-start-s-7{grid-column-start:7}
.global-grid-item-start-s-8{grid-column-start:8}
.global-grid-item-start-s-9{grid-column-start:9}
.global-grid-item-start-s-10{grid-column-start:10}
.global-grid-item-start-s-11{grid-column-start:11}
.global-grid-item-start-s-12{grid-column-start:12}
.global-grid-item-order-s-1{-webkit-order:1;
-ms-flex-order:1;
order:1}
.global-grid-item-order-s-2{-webkit-order:2;
-ms-flex-order:2;
order:2}
.global-grid-item-order-s-3{-webkit-order:3;
-ms-flex-order:3;
order:3}
.global-grid-item-order-s-4{-webkit-order:4;
-ms-flex-order:4;
order:4}
.global-grid-item-order-s-5{-webkit-order:5;
-ms-flex-order:5;
order:5}
.global-grid-item-order-s-6{-webkit-order:6;
-ms-flex-order:6;
order:6}
.global-grid-item-order-s-7{-webkit-order:7;
-ms-flex-order:7;
order:7}
.global-grid-item-order-s-8{-webkit-order:8;
-ms-flex-order:8;
order:8}
.global-grid-item-order-s-9{-webkit-order:9;
-ms-flex-order:9;
order:9}
.global-grid-item-order-s-10{-webkit-order:10;
-ms-flex-order:10;
order:10}
.global-grid-item-order-s-11{-webkit-order:11;
-ms-flex-order:11;
order:11}
.global-grid-item-order-s-12{-webkit-order:12;
-ms-flex-order:12;
order:12}}
@media screen and (min-width:1080px) {.global-grid-item-span-m-1{grid-column-end:span 1}
.global-grid-item-span-m-2{grid-column-end:span 2}
.global-grid-item-span-m-3{grid-column-end:span 3}
.global-grid-item-span-m-4{grid-column-end:span 4}
.global-grid-item-span-m-5{grid-column-end:span 5}
.global-grid-item-span-m-6{grid-column-end:span 6}
.global-grid-item-span-m-7{grid-column-end:span 7}
.global-grid-item-span-m-8{grid-column-end:span 8}
.global-grid-item-span-m-9{grid-column-end:span 9}
.global-grid-item-span-m-10{grid-column-end:span 10}
.global-grid-item-span-m-11{grid-column-end:span 11}
.global-grid-item-span-m-12{grid-column-end:span 12}
.global-grid-item-start-m-1{grid-column-start:1}
.global-grid-item-start-m-2{grid-column-start:2}
.global-grid-item-start-m-3{grid-column-start:3}
.global-grid-item-start-m-4{grid-column-start:4}
.global-grid-item-start-m-5{grid-column-start:5}
.global-grid-item-start-m-6{grid-column-start:6}
.global-grid-item-start-m-7{grid-column-start:7}
.global-grid-item-start-m-8{grid-column-start:8}
.global-grid-item-start-m-9{grid-column-start:9}
.global-grid-item-start-m-10{grid-column-start:10}
.global-grid-item-start-m-11{grid-column-start:11}
.global-grid-item-start-m-12{grid-column-start:12}
.global-grid-item-order-m-1{-webkit-order:1;
-ms-flex-order:1;
order:1}
.global-grid-item-order-m-2{-webkit-order:2;
-ms-flex-order:2;
order:2}
.global-grid-item-order-m-3{-webkit-order:3;
-ms-flex-order:3;
order:3}
.global-grid-item-order-m-4{-webkit-order:4;
-ms-flex-order:4;
order:4}
.global-grid-item-order-m-5{-webkit-order:5;
-ms-flex-order:5;
order:5}
.global-grid-item-order-m-6{-webkit-order:6;
-ms-flex-order:6;
order:6}
.global-grid-item-order-m-7{-webkit-order:7;
-ms-flex-order:7;
order:7}
.global-grid-item-order-m-8{-webkit-order:8;
-ms-flex-order:8;
order:8}
.global-grid-item-order-m-9{-webkit-order:9;
-ms-flex-order:9;
order:9}
.global-grid-item-order-m-10{-webkit-order:10;
-ms-flex-order:10;
order:10}
.global-grid-item-order-m-11{-webkit-order:11;
-ms-flex-order:11;
order:11}
.global-grid-item-order-m-12{-webkit-order:12;
-ms-flex-order:12;
order:12}}
@media screen and (min-width:1280px) {.global-grid-item-span-l-1{grid-column-end:span 1}
.global-grid-item-span-l-2{grid-column-end:span 2}
.global-grid-item-span-l-3{grid-column-end:span 3}
.global-grid-item-span-l-4{grid-column-end:span 4}
.global-grid-item-span-l-5{grid-column-end:span 5}
.global-grid-item-span-l-6{grid-column-end:span 6}
.global-grid-item-span-l-7{grid-column-end:span 7}
.global-grid-item-span-l-8{grid-column-end:span 8}
.global-grid-item-span-l-9{grid-column-end:span 9}
.global-grid-item-span-l-10{grid-column-end:span 10}
.global-grid-item-span-l-11{grid-column-end:span 11}
.global-grid-item-span-l-12{grid-column-end:span 12}
.global-grid-item-start-l-1{grid-column-start:1}
.global-grid-item-start-l-2{grid-column-start:2}
.global-grid-item-start-l-3{grid-column-start:3}
.global-grid-item-start-l-4{grid-column-start:4}
.global-grid-item-start-l-5{grid-column-start:5}
.global-grid-item-start-l-6{grid-column-start:6}
.global-grid-item-start-l-7{grid-column-start:7}
.global-grid-item-start-l-8{grid-column-start:8}
.global-grid-item-start-l-9{grid-column-start:9}
.global-grid-item-start-l-10{grid-column-start:10}
.global-grid-item-start-l-11{grid-column-start:11}
.global-grid-item-start-l-12{grid-column-start:12}
.global-grid-item-order-l-1{-webkit-order:1;
-ms-flex-order:1;
order:1}
.global-grid-item-order-l-2{-webkit-order:2;
-ms-flex-order:2;
order:2}
.global-grid-item-order-l-3{-webkit-order:3;
-ms-flex-order:3;
order:3}
.global-grid-item-order-l-4{-webkit-order:4;
-ms-flex-order:4;
order:4}
.global-grid-item-order-l-5{-webkit-order:5;
-ms-flex-order:5;
order:5}
.global-grid-item-order-l-6{-webkit-order:6;
-ms-flex-order:6;
order:6}
.global-grid-item-order-l-7{-webkit-order:7;
-ms-flex-order:7;
order:7}
.global-grid-item-order-l-8{-webkit-order:8;
-ms-flex-order:8;
order:8}
.global-grid-item-order-l-9{-webkit-order:9;
-ms-flex-order:9;
order:9}
.global-grid-item-order-l-10{-webkit-order:10;
-ms-flex-order:10;
order:10}
.global-grid-item-order-l-11{-webkit-order:11;
-ms-flex-order:11;
order:11}
.global-grid-item-order-l-12{-webkit-order:12;
-ms-flex-order:12;
order:12}}
@media screen and (min-width:1440px) {.global-grid-item-span-xl-1{grid-column-end:span 1}
.global-grid-item-span-xl-2{grid-column-end:span 2}
.global-grid-item-span-xl-3{grid-column-end:span 3}
.global-grid-item-span-xl-4{grid-column-end:span 4}
.global-grid-item-span-xl-5{grid-column-end:span 5}
.global-grid-item-span-xl-6{grid-column-end:span 6}
.global-grid-item-span-xl-7{grid-column-end:span 7}
.global-grid-item-span-xl-8{grid-column-end:span 8}
.global-grid-item-span-xl-9{grid-column-end:span 9}
.global-grid-item-span-xl-10{grid-column-end:span 10}
.global-grid-item-span-xl-11{grid-column-end:span 11}
.global-grid-item-span-xl-12{grid-column-end:span 12}
.global-grid-item-start-xl-1{grid-column-start:1}
.global-grid-item-start-xl-2{grid-column-start:2}
.global-grid-item-start-xl-3{grid-column-start:3}
.global-grid-item-start-xl-4{grid-column-start:4}
.global-grid-item-start-xl-5{grid-column-start:5}
.global-grid-item-start-xl-6{grid-column-start:6}
.global-grid-item-start-xl-7{grid-column-start:7}
.global-grid-item-start-xl-8{grid-column-start:8}
.global-grid-item-start-xl-9{grid-column-start:9}
.global-grid-item-start-xl-10{grid-column-start:10}
.global-grid-item-start-xl-11{grid-column-start:11}
.global-grid-item-start-xl-12{grid-column-start:12}
.global-grid-item-order-xl-1{-webkit-order:1;
-ms-flex-order:1;
order:1}
.global-grid-item-order-xl-2{-webkit-order:2;
-ms-flex-order:2;
order:2}
.global-grid-item-order-xl-3{-webkit-order:3;
-ms-flex-order:3;
order:3}
.global-grid-item-order-xl-4{-webkit-order:4;
-ms-flex-order:4;
order:4}
.global-grid-item-order-xl-5{-webkit-order:5;
-ms-flex-order:5;
order:5}
.global-grid-item-order-xl-6{-webkit-order:6;
-ms-flex-order:6;
order:6}
.global-grid-item-order-xl-7{-webkit-order:7;
-ms-flex-order:7;
order:7}
.global-grid-item-order-xl-8{-webkit-order:8;
-ms-flex-order:8;
order:8}
.global-grid-item-order-xl-9{-webkit-order:9;
-ms-flex-order:9;
order:9}
.global-grid-item-order-xl-10{-webkit-order:10;
-ms-flex-order:10;
order:10}
.global-grid-item-order-xl-11{-webkit-order:11;
-ms-flex-order:11;
order:11}
.global-grid-item-order-xl-12{-webkit-order:12;
-ms-flex-order:12;
order:12}}</style>

<style id="__jsx-3741810549">.global-title{margin-top:0;
margin-bottom:0;
font-smoothing:antialiased;
-webkit-font-smoothing:antialiased}
.global-title-color-light{color:var(--text-color-light)}
.global-title-color-medium{color:var(--text-color-medium)}
.global-title-color-dark{color:var(--text-color-dark)}
.global-title-color-white{color:#FFFFFF}
.global-title-color-red{color:#EB5757}
.global-title-color-blue{color:#3AA0DA}
.global-title-color-yellow{color:#E2A020}
.global-title-color-purple{color:#6B5CBD}
.global-title-weight-regular{font-weight:400}
.global-title-weight-medium{font-weight:500}
.global-title-weight-semibold{font-weight:600}
.global-title-weight-bold{font-weight:700}
.global-title-align-start{text-align:start}
.global-title-align-center{text-align:center}
.global-title-align-end{text-align:end}
.global-title-size-xxs{font-size:1.125rem;
line-height:1.5rem}
.global-title-size-xxs.global-title-weight-regular{font-variation-settings:"wght" 448;
letter-spacing:-0.0085em}
.global-title-size-xxs.global-title-weight-medium{font-variation-settings:"wght" 529;
letter-spacing:-0.0075em}
.global-title-size-xxs.global-title-weight-semibold{font-variation-settings:"wght" 605;
letter-spacing:-0.0079em}
.global-title-size-xxs.global-title-weight-bold{font-variation-settings:"wght" 666;
letter-spacing:-0.0072em}
.global-title-size-xs{font-size:1.5rem;
line-height:1.875rem}
.global-title-size-xs.global-title-weight-regular{font-variation-settings:"wght" 428;
letter-spacing:-0.014em}
.global-title-size-xs.global-title-weight-medium{font-variation-settings:"wght" 525;
letter-spacing:-0.0175em}
.global-title-size-xs.global-title-weight-semibold{font-variation-settings:"wght" 618;
letter-spacing:-0.0185em}
.global-title-size-xs.global-title-weight-bold{font-variation-settings:"wght" 666;
letter-spacing:-0.0168em}
.global-title-size-s{font-size:1.875rem;
line-height:2.125rem}
.global-title-size-s.global-title-weight-semibold{font-variation-settings:"wght" 620;
letter-spacing:-0.022em}
.global-title-size-s.global-title-weight-bold{font-variation-settings:"wght" 667;
letter-spacing:-0.0208em}
.global-title-size-m{font-size:2.25rem;
line-height:2.5rem}
.global-title-size-m.global-title-weight-semibold{font-variation-settings:"wght" 620;
letter-spacing:-0.0224em}
.global-title-size-m.global-title-weight-bold{font-variation-settings:"wght" 669;
letter-spacing:-0.0236em}
.global-title-size-l{font-size:2.8125rem;
line-height:3.0625rem}
.global-title-size-l.global-title-weight-semibold{font-variation-settings:"wght" 628;
letter-spacing:-0.0272em}
.global-title-size-l.global-title-weight-bold{font-variation-settings:"wght" 669;
letter-spacing:-0.0269em}
.global-title-size-xl{font-size:3.3125rem;
line-height:3.625rem}
.global-title-size-xl.global-title-weight-semibold{font-variation-settings:"wght" 620;
letter-spacing:-0.0282em}
.global-title-size-xl.global-title-weight-bold{font-variation-settings:"wght" 669;
letter-spacing:-0.0307em}
.global-title-size-xxl{font-size:3.8125rem;
line-height:4.0625rem}
.global-title-size-xxl.global-title-weight-semibold{font-variation-settings:"wght" 620;
letter-spacing:-0.0315em}
.global-title-size-xxl.global-title-weight-bold{font-variation-settings:"wght" 671;
letter-spacing:-0.0315em}
.global-title-size-xxxl{font-size:4.78125rem;
line-height:4.875rem}
.global-title-size-xxxl.global-title-weight-bold{font-variation-settings:"wght" 672;
letter-spacing:-0.0335em}
@media screen and (max-width:600px) {.global-title-size-s{font-size:1.5rem;
line-height:1.875rem}
.global-title-size-s.global-title-weight-semibold{font-variation-settings:"wght" 618;
letter-spacing:-0.0185em}
.global-title-size-s.global-title-weight-bold{font-variation-settings:"wght" 666;
letter-spacing:-0.0168em}
.global-title-size-m{font-size:1.875rem;
line-height:2.125rem}
.global-title-size-m.global-title-weight-semibold{font-variation-settings:"wght" 620;
letter-spacing:-0.022em}
.global-title-size-m.global-title-weight-bold{font-variation-settings:"wght" 667;
letter-spacing:-0.0208em}
.global-title-size-l{font-size:2.25rem;
line-height:2.5rem}
.global-title-size-l.global-title-weight-semibold{font-variation-settings:"wght" 620;
letter-spacing:-0.0224em}
.global-title-size-l.global-title-weight-bold{font-variation-settings:"wght" 669;
letter-spacing:-0.0236em}
.global-title-size-xl, .global-title-size-xxl, .global-title-size-xxxl{font-size:2.8125rem;
line-height:3.0625rem}
.global-title-size-xl.global-title-weight-semibold, .global-title-size-xxl.global-title-weight-semibold{font-variation-settings:"wght" 628;
letter-spacing:-0.0272em}
.global-title-size-xl.global-title-weight-bold, .global-title-size-xxl.global-title-weight-bold, .global-title-size-xxxl.global-title-weight-bold{font-variation-settings:"wght" 669;
letter-spacing:-0.0269em}}</style><style id="__jsx-860427559">.button-link.jsx-860427559{-webkit-text-decoration:none;
text-decoration:none;
color:inherit}
.button.jsx-860427559{display:-webkit-inline-box;
display:-webkit-inline-flex;
display:-ms-inline-flexbox;
display:inline-flex;
-webkit-align-items:center;
-webkit-box-align:center;
-ms-flex-align:center;
align-items:center;
-webkit-justify-content:center;
justify-content:center;
word-break:break-word;
white-space:pre-line;
border-radius:5px;
font-family:inter-var, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, "Apple Color Emoji", Arial, sans-serif, "Segoe UI Emoji", "Segoe UI Symbol";
font-smoothing:antialiased;
-webkit-font-smoothing:antialiased;
border:0;
height:auto;
background:transparent;
transition-property:border, color, background;
transition-duration:190ms;
transition-timing-function:ease;
min-width:160px}
.button.jsx-860427559:active, .button.jsx-860427559:focus{outline:none}
.full-width.jsx-860427559{width:100%}
.button-size-s.jsx-860427559{padding:0.3125rem 0.6875rem;
font-size:0.84375rem;
line-height:1.1875rem;
letter-spacing:[object Object];
font-weight:619}
.button-size-m.jsx-860427559{padding:0.4375rem 0.8125rem;
font-size:0.84375rem;
line-height:1.1875rem;
letter-spacing:[object Object];
font-weight:619}
.button-size-l.jsx-860427559{padding:0.375rem 0.875rem 0.4375rem 0.875rem;
font-size:1rem;
line-height:1.4375rem;
letter-spacing:[object Object];
font-weight:570}
.primary.jsx-860427559{color:#FFFFFF;
background: linear-gradient(
							180deg,
							rgba(255, 255, 255, 0.04) 0%,
							rgba(255, 255, 255, 0) 100%
						),
						#e16259;
box-shadow:0px 4px 9px rgba(0, 0, 0, 0.0471111), 0px 1.54074px 2.86667px rgba(0, 0, 0, 0.0728889), 0px 0.325926px 0.733333px rgba(0, 0, 0, 0.12)}
.primary.jsx-860427559:hover{background: linear-gradient(
							180deg,
							rgba(255, 255, 255, 0.04) 0%,
							rgba(255, 255, 255, 0) 100%
						),
						linear-gradient(0deg, rgba(0, 0, 0, 0.04), rgba(0, 0, 0, 0.04)),
						#e16259;
background-blend-mode:normal, multiply, normal;
box-shadow:0px 4px 9px rgba(0, 0, 0, 0.0471111), 0px 1.54074px 2.86667px rgba(0, 0, 0, 0.0728889), 0px 0.325926px 0.733333px rgba(0, 0, 0, 0.12)}
.primary.jsx-860427559:active{background: linear-gradient(
							180deg,
							rgba(255, 255, 255, 0.04) 0%,
							rgba(255, 255, 255, 0) 100%
						),
						linear-gradient(0deg, rgba(0, 0, 0, 0.09), rgba(0, 0, 0, 0.09)),
						#e16259;
background-blend-mode:normal, multiply, normal;
box-shadow:inset 0px 5px 3px rgba(0, 0, 0, 0.015)}
.secondary.jsx-860427559{color:#EB5757;
background: linear-gradient(
							180deg,
							rgba(28, 28, 28, 0) 0%,
							rgba(28, 28, 28, 0.0175) 100%
						),
						linear-gradient(
							0deg,
							rgba(225, 98, 89, 0.085),
							rgba(225, 98, 89, 0.085)
						),
						#ffffff;
border:1px solid rgba(225, 98, 89, 0.195);
box-shadow:0px 4px 9px rgba(0, 0, 0, 0.03), 0px 0.8px 1.4625px rgba(0, 0, 0, 0.015)}
.secondary.jsx-860427559:hover{background: linear-gradient(
							180deg,
							rgba(28, 28, 28, 0) 0%,
							rgba(28, 28, 28, 0.0175) 100%
						),
						linear-gradient(0deg, rgba(0, 0, 0, 0.0075), rgba(0, 0, 0, 0.0075)),
						linear-gradient(
							0deg,
							rgba(225, 98, 89, 0.1),
							rgba(225, 98, 89, 0.1)
						),
						#ffffff;
background-blend-mode:normal, multiply, normal, normal;
border:1px solid rgba(225, 98, 89, 0.195);
box-shadow:0px 4px 9px rgba(0, 0, 0, 0.03), 0px 0.8px 1.4625px rgba(0, 0, 0, 0.015)}
.secondary.jsx-860427559:active{background: linear-gradient(
							180deg,
							rgba(28, 28, 28, 0) 0%,
							rgba(28, 28, 28, 0.0175) 100%
						),
						linear-gradient(0deg, rgba(0, 0, 0, 0.02), rgba(0, 0, 0, 0.02)),
						linear-gradient(
							0deg,
							rgba(225, 98, 89, 0.125),
							rgba(225, 98, 89, 0.125)
						),
						#ffffff;
background-blend-mode:normal, multiply, normal, normal;
border:1px solid rgba(225, 98, 89, 0.17);
box-shadow:inset 0px 5px 3px rgba(0, 0, 0, 0.01)}
.tertiary.jsx-860427559{color:var(--text-color-regular);
background: linear-gradient(
							180deg,
							rgba(28, 28, 28, 0) 0%,
							rgba(28, 28, 28, 0.005) 100%
						),
						rgba(255, 255, 255, 0.77);
background-blend-mode:normal, lighten;
border:1px solid rgba(0, 0, 0, 0.095);
box-shadow:0px 3px 9px rgba(0, 0, 0, 0.03), 0px 0.7px 1.4625px rgba(0, 0, 0, 0.015);
backdrop-filter:blur(25px);
-webkit-backdrop-filter:blur(25px)}
.tertiary.jsx-860427559:hover{background: linear-gradient(
							180deg,
							rgba(28, 28, 28, 0) 0%,
							rgba(28, 28, 28, 0.005) 100%
						),
						linear-gradient(0deg, rgba(0, 0, 0, 0.01), rgba(0, 0, 0, 0.01)),
						rgba(255, 255, 255, 0.77);
background-blend-mode:normal, normal, lighten;
border:1px solid rgba(0, 0, 0, 0.095);
box-shadow:0px 3px 9px rgba(0, 0, 0, 0.03), 0px 0.7px 1.4625px rgba(0, 0, 0, 0.015)}
.tertiary.jsx-860427559:active{background: linear-gradient(
							180deg,
							rgba(28, 28, 28, 0) 0%,
							rgba(28, 28, 28, 0.005) 100%
						),
						linear-gradient(0deg, rgba(0, 0, 0, 0.025), rgba(0, 0, 0, 0.025)),
						rgba(255, 255, 255, 0.77);
background-blend-mode:normal, normal, lighten;
border:1px solid rgba(0, 0, 0, 0.095);
box-shadow:inset 0px 5px 3px rgba(0, 0, 0, 0.0075)}
.dark.jsx-860427559{color:#f8f5f1;
background:rgba(54, 53, 47, 0.72);
border:1px solid rgba(54, 53, 47, 0.4)}
.dark.jsx-860427559:hover{background:rgba(54, 53, 47, 1)}
.dark.jsx-860427559:active, .dark.jsx-860427559:focus{background:rgba(54, 53, 47, 1)}
.blue.jsx-860427559{color:#FFFFFF;
background: linear-gradient(
							180deg,
							rgba(255, 255, 255, 0.04) 0%,
							rgba(255, 255, 255, 0) 100%
						),
						#2383e2}
.blue.jsx-860427559:hover{background: linear-gradient(
							180deg,
							rgba(255, 255, 255, 0.04) 0%,
							rgba(255, 255, 255, 0) 100%
						),
						linear-gradient(0deg, rgba(0, 0, 0, 0.04), rgba(0, 0, 0, 0.04)),
						#2383e2}
.blue.jsx-860427559:active, .blue.jsx-860427559:focus{background: linear-gradient(
							180deg,
							rgba(255, 255, 255, 0.04) 0%,
							rgba(255, 255, 255, 0) 100%
						),
						linear-gradient(0deg, rgba(0, 0, 0, 0.09), rgba(0, 0, 0, 0.09)),
						#2383e2}
.light.jsx-860427559{background:#ffffff;
box-shadow:0px 1px 2px rgba(0, 0, 0, 0.03), inset 0 0 0 1px rgba(0, 0, 0, 0.1)}
.light.jsx-860427559:hover{background:#fafafa}
.light.jsx-860427559:active, .light.jsx-860427559:focus{background:#f1f1f1}
.simple.jsx-860427559{font-weight:inherit;
color:inherit;
-webkit-transition:background 150ms;
transition:background 150ms;
height:auto;
padding:6px}
.simple.jsx-860427559:hover{background:rgba(0,0,0,0.03)}
.simple.jsx-860427559:hover, .simple.jsx-860427559:focus-within{background:rgba(0,0,0,0.06);
outline:none}
.button-size-s.has-arrow-right.jsx-860427559{padding-right:0.5rem}
.button-size-m.has-arrow-right.jsx-860427559{padding-right:0.6875rem}
.button-size-l.has-arrow-right.jsx-860427559{padding-right:0.75rem}
.has-arrow-right.jsx-860427559::after, .has-arrow-down.jsx-860427559::after{display:inline-block;
-webkit-text-decoration:none;
text-decoration:none;
margin-left:0.25em}
.has-arrow-right.jsx-860427559::after{content:" →"}
.has-arrow-down.jsx-860427559::after{content:" ↓"}
.has-arrow-up.jsx-860427559::after{content:" ↑"}
.has-arrow-left.jsx-860427559::before{content:"← ";
margin-left:0;
margin-right:0.25em}</style>

<style id="__jsx-1427505816">.logo.jsx-1427505816{display:block;
height:100%;
width:100%;
max-width:108px;
-webkit-box-flex:0;
-webkit-flex-grow:0;
-ms-flex-positive:0;
flex-grow:0}
.logo-limit-height.jsx-1427505816{max-height:30px;
object-fit:contain}
.logo-bw.jsx-1427505816{-webkit-filter:grayscale(100%);
filter:grayscale(100%)}</style><style id="__jsx-3745431632">.logo.jsx-3745431632{display:block;
height:100%;
width:100%;
max-width:122px;
-webkit-box-flex:0;
-webkit-flex-grow:0;
-ms-flex-positive:0;
flex-grow:0}
.logo-limit-height.jsx-3745431632{max-height:30px;
object-fit:contain}
.logo-bw.jsx-3745431632{-webkit-filter:grayscale(100%);
filter:grayscale(100%)}</style>

<style id="__jsx-3135077381">.logo.jsx-3135077381{display:block;
height:100%;
width:100%;
max-width:62px;
-webkit-box-flex:0;
-webkit-flex-grow:0;
-ms-flex-positive:0;
flex-grow:0}
.logo-limit-height.jsx-3135077381{max-height:30px;
object-fit:contain}
.logo-bw.jsx-3135077381{-webkit-filter:grayscale(100%);
filter:grayscale(100%)}</style><style id="__jsx-3172076237">.logo.jsx-3172076237{display:block;
height:100%;
width:100%;
max-width:84px;
-webkit-box-flex:0;
-webkit-flex-grow:0;
-ms-flex-positive:0;
flex-grow:0}
.logo-limit-height.jsx-3172076237{max-height:30px;
object-fit:contain}
.logo-bw.jsx-3172076237{-webkit-filter:grayscale(100%);
filter:grayscale(100%)}</style>

<style id="__jsx-471281099">.logo.jsx-471281099{display:block;
height:100%;
width:100%;
max-width:82px;
-webkit-box-flex:0;
-webkit-flex-grow:0;
-ms-flex-positive:0;
flex-grow:0}
.logo-limit-height.jsx-471281099{max-height:30px;
object-fit:contain}
.logo-bw.jsx-471281099{-webkit-filter:grayscale(100%);
filter:grayscale(100%)}</style>

<style id="__jsx-722906092">.logos.jsx-722906092{display:-webkit-box;
display:-webkit-flex;
display:-ms-flexbox;
display:flex;
flex-wrap:wrap;
-webkit-align-items:center;
-webkit-box-align:center;
-ms-flex-align:center;
align-items:center;
-webkit-justify-content:center;
justify-content:center;
max-width:560px;
margin:-10px auto}
.opacity.jsx-722906092{opacity:65%}
.logo-item.jsx-722906092{display:-webkit-inline-box;
display:-webkit-inline-flex;
display:-ms-inline-flexbox;
display:inline-flex;
margin:10px 10px 5px}
@media screen and (min-width:1080px) {.logos.jsx-722906092{margin:-10px;
-webkit-box-pack:start;
-ms-flex-pack:start;
-webkit-justify-content:flex-start;
justify-content:flex-start}
.no-max-width.jsx-722906092{max-width:none}}</style>

<style id="__jsx-1833228176">.global-grid-container{display:grid;
-webkit-column-gap:3.125vw;
column-gap:3.125vw;
row-gap:3.125vw;
width:100%}
.global-grid-align-items-center{-webkit-align-items:center;
-webkit-box-align:center;
-ms-flex-align:center;
align-items:center}
.global-grid-align-items-start{-webkit-align-items:start;
-webkit-box-align:start;
-ms-flex-align:start;
align-items:start}
.global-grid-align-items-end{-webkit-align-items:end;
-webkit-box-align:end;
-ms-flex-align:end;
align-items:end}
.global-grid-columns-1{grid-template-columns:repeat(1, minmax(0, 1fr))}
.global-grid-columns-2{grid-template-columns:repeat(2, minmax(0, 1fr))}
.global-grid-columns-3{grid-template-columns:repeat(3, minmax(0, 1fr))}
.global-grid-columns-4{grid-template-columns:repeat(4, minmax(0, 1fr))}
.global-grid-columns-5{grid-template-columns:repeat(5, minmax(0, 1fr))}
.global-grid-columns-6{grid-template-columns:repeat(6, minmax(0, 1fr))}
.global-grid-columns-7{grid-template-columns:repeat(7, minmax(0, 1fr))}
.global-grid-columns-8{grid-template-columns:repeat(8, minmax(0, 1fr))}
.global-grid-columns-9{grid-template-columns:repeat(9, minmax(0, 1fr))}
.global-grid-columns-10{grid-template-columns:repeat(10, minmax(0, 1fr))}
.global-grid-columns-11{grid-template-columns:repeat(11, minmax(0, 1fr))}
.global-grid-columns-12{grid-template-columns:repeat(12, minmax(0, 1fr))}
@media screen and (min-width:375px) {.global-grid-container{row-gap:unset}
.global-grid-row-gap-xs-s{row-gap:3.125vw}
.global-grid-row-gap-xs-m{row-gap:4.698vw}
.global-grid-row-gap-xs-l{row-gap:6.25vw}}
@media screen and (min-width:600px) {.global-grid-row-gap-s-s{row-gap:3.125vw}
.global-grid-row-gap-s-m{row-gap:4.698vw}
.global-grid-row-gap-s-l{row-gap:6.25vw}}
@media screen and (min-width:1080px) {.global-grid-row-gap-m-s{row-gap:3.125vw}
.global-grid-row-gap-m-m{row-gap:4.698vw}
.global-grid-row-gap-m-l{row-gap:6.25vw}}
@media screen and (min-width:1280px) {.global-grid-row-gap-l-s{row-gap:3.125vw}
.global-grid-row-gap-l-m{row-gap:4.698vw}
.global-grid-row-gap-l-l{row-gap:6.25vw}}
@media screen and (min-width:1440px) {.global-grid-container{-webkit-column-gap:min(3.334vw, 48px);
column-gap:min(3.334vw, 48px)}
.global-grid-row-gap{row-gap:min(3.334vw, 48px)}
.global-grid-row-gap-xl-s{row-gap:min(3.334vw, 48px)}
.global-grid-row-gap-xl-m{row-gap:min(5vw, 72px)}
.global-grid-row-gap-xl-l{row-gap:min(6.666vw, 96px)}}</style>

<style id="__jsx-776022711">.global-align-center{display:-webkit-box;
display:-webkit-flex;
display:-ms-flexbox;
display:flex;
-webkit-flex-direction:column;
-ms-flex-direction:column;
flex-direction:column;
-webkit-align-items:center;
-webkit-box-align:center;
-ms-flex-align:center;
align-items:center;
text-align:center}
.global-margin-xs{margin:var(--spacing-xs) 0}
.global-margin-s{margin:var(--spacing-s) 0}
.global-margin-m{margin:var(--spacing-m) 0}
.global-margin-l{margin:var(--spacing-l) 0}
.global-margin-xl{margin:var(--spacing-xl) 0}
.global-padding-xs{padding:var(--spacing-xs) 0}
.global-padding-s{padding:var(--spacing-s) 0}
.global-padding-m{padding:var(--spacing-m) 0}
.global-padding-l{padding:var(--spacing-l) 0}
.global-padding-xl{padding:var(--spacing-xl) 0}</style>

<style id="__jsx-1805324592">.subtitle-wrap.jsx-1805324592{max-width:420px;
margin:8px auto 0}
.button-wrap.jsx-1805324592{margin:20px auto 0;
width:auto}
.trusted-by-wrap.jsx-1805324592{margin-top:30px}
.logos-wrap.jsx-1805324592{margin:8px auto 0}
.text-wrap.jsx-1805324592{text-align:center}
.visual.jsx-1805324592{max-width:400px;
margin:0 auto 10px}
@media screen and (min-width:1080px) {.subtitle-wrap.jsx-1805324592{margin:15px 0 0 0}
.button-wrap.jsx-1805324592{margin:20px 0 0}
.text-wrap.jsx-1805324592{text-align:left}
.visual.jsx-1805324592{max-width:none;
margin:0 auto}}</style>

<style id="__jsx-2892347373">hr.jsx-2892347373{height:1px;
outline:none;
border:none;
margin:0 auto;
padding:0;
display:block;
width:100%;
border-top:1px solid var(--border-color-regular)}</style>

<style id="__jsx-1785603898">.inline-link.jsx-1785603898{color:inherit;
text-decoration:underline;
text-underline-offset:0.1em;
text-decoration-thickness:1px;
cursor:pointer;
display:inline}
.inline-link.jsx-1785603898:hover{color:#EB5757;
opacity:1;
-webkit-text-decoration:none;
text-decoration:none}
.has-arrow-right.jsx-1785603898::after, .has-arrow-down.jsx-1785603898::after{display:inline-block;
-webkit-text-decoration:none;
text-decoration:none}
.has-arrow-right.jsx-1785603898::after{content:" →"}
.has-arrow-down.jsx-1785603898::after{content:" ↓"}
.has-arrow-up.jsx-1785603898::after{content:" ↑"}
.has-arrow-left.jsx-1785603898::before{content:"← "}
.disable-underline.jsx-1785603898{-webkit-text-decoration:none;
text-decoration:none}
.underline-border.jsx-1785603898{text-decoration-color:var(--border-color-regular)}
.underline-light.jsx-1785603898{text-decoration-color:var(--text-color-light)}
.underline-red.jsx-1785603898{text-decoration-color:#EB5757}</style><style id="__jsx-4278297567">.titles.jsx-4278297567{text-align:center;
margin-bottom:20px}
.subtitle.jsx-4278297567{margin:10px auto;
max-width:400px}
.app-icon.jsx-4278297567{width:80px;
margin:0 auto 5px}
.button-wrap.jsx-4278297567{margin:0 auto;
width:240px;
margin:10px auto}
.ctas-wrap.jsx-4278297567{text-align:center;
width:100%}
p.jsx-4278297567{margin:0;
font-size:17px;
color:var(--text-color-medium)}
.cta-section-relative.jsx-4278297567{position:relative}
.illustration.jsx-4278297567{display:none}
@media screen and (min-width:800px) {.cta-section-relative.jsx-4278297567{padding-bottom:100px}
.illustration.jsx-4278297567{position:absolute;
display:block;
width:200px;
bottom:-80px}}
@media screen and (min-width:1020px) {.illustration.jsx-4278297567{width:300px;
left:0;
bottom:-80px}}
@media screen and (min-width:1380px) {.cta-section-relative.jsx-4278297567{padding-bottom:100px}
.illustration.jsx-4278297567{left:80px;
bottom:-120px}}</style>

<style id="__jsx-3147728626">.footer-bottom.jsx-3147728626{border-top:1px solid rgba(0, 0, 0, 0.1);
font-size:14px;
font-weight:544}
.link-list-mobile.jsx-3147728626{list-style:none;
display:grid;
grid-template-columns:repeat(2, 1fr);
grid-row-gap:10px;
grid-column-gap:20px;
margin:0;
padding:0}
.link-list-mobile.jsx-3147728626 li.jsx-3147728626{margin-right:2em}
.link-list-mobile.jsx-3147728626 li.jsx-3147728626:first-child{margin-right:1em}
.link-list-mobile.jsx-3147728626{border-top:1px solid rgba(0, 0, 0, 0.1);
padding:20px 0}
.link-list-mobile.jsx-3147728626:first-child{border-top:0}
.link-list.jsx-3147728626{font-weight:544;
letter-spacing:0.00065em;
list-style:none;
display:-webkit-box;
display:-webkit-flex;
display:-ms-flexbox;
display:flex;
-webkit-align-items:center;
-webkit-box-align:center;
-ms-flex-align:center;
align-items:center;
margin:0;
padding:0}
.link-list.jsx-3147728626 li.jsx-3147728626{margin-right:1.75em}
.link-list.jsx-3147728626 li.jsx-3147728626:first-child{margin-right:1em}
.action.jsx-3147728626{-webkit-text-decoration:none;
text-decoration:none;
list-style:none;
cursor:pointer}
.trigger.jsx-3147728626, .mobile-trigger.jsx-3147728626{cursor:pointer;
display:-webkit-box;
display:-webkit-flex;
display:-ms-flexbox;
display:flex;
-webkit-align-items:center;
-webkit-box-align:center;
-ms-flex-align:center;
align-items:center;
height:30px;
padding:2px 8px;
border-radius:5px;
background:none;
margin:0;
-webkit-appearance:none;
-moz-appearance:none;
-ms-appearance:none;
appearance:none;
font:inherit;
border:none}
.mobile-trigger.jsx-3147728626{padding:0;
height:auto}
.trigger.jsx-3147728626:hover{background:#F9F5F1}
.action.jsx-3147728626:hover{text-decoration:underline;
color:#EB5757}
.footer-bottom-desktop.jsx-3147728626{display:none}
.footer-bottom-mobile.jsx-3147728626{display:block}
.mobile-social.jsx-3147728626{margin-left:-10px}
.mobile-copyright.jsx-3147728626{padding:20px 0}
@media screen and (min-width:1020px) {.footer-bottom-desktop.jsx-3147728626{padding:15px 0;
display:-webkit-box;
display:-webkit-flex;
display:-ms-flexbox;
display:flex;
-webkit-align-items:center;
-webkit-box-align:center;
-ms-flex-align:center;
align-items:center;
-webkit-box-pack:justify;
-webkit-justify-content:space-between;
justify-content:space-between}
.footer-bottom-mobile.jsx-3147728626{display:none}}</style><style id="__jsx-3166521707">.footer.jsx-3166521707{width:100%;
padding:0 24px;
margin:0 auto}
@media screen and (min-width:600px) {.footer.jsx-3166521707{width:88vw;
max-width:1392px;
padding:0;
margin:0 auto}}
@media screen and (min-width:1280px) {.footer.jsx-3166521707{width:87vw}}</style><style id="__jsx-1382635649">html, body{background:#FFFEFC}
body{color:var(--text-color-dark);
font-family:inter-var, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, "Apple Color Emoji", Arial, sans-serif, "Segoe UI Emoji", "Segoe UI Symbol";
font-size:17px;
line-height:1.5}
a{color:var(--text-color-dark)}</style><style id="__jsx-1549916940">.main.jsx-1549916940{width:100%;
padding:0 24px;
margin:0 auto}
@media screen and (min-width:600px) {.main.jsx-1549916940{width:88vw;
max-width:1392px;
padding:0;
margin:0 auto}}
@media screen and (min-width:1280px) {.main.jsx-1549916940{width:87vw}}</style><style id="__jsx-3156065021">:root{--base-padding:20px;
--border-color-regular:rgba(0, 0, 0, 0.1);
--text-color-extra-light:rgba(0,0,0,0.2);
--text-color-light:rgba(0,0,0,0.4);
--text-color-medium:rgba(0,0,0,0.6);
--text-color-dark:rgba(17, 17, 17, 1);
--text-color-regular:rgba(4, 4, 4, 1);
--spacing-xs:20px;
--spacing-s:40px;
--spacing-m:40px;
--spacing-l:60px;
--spacing-xl:60px}
@media screen and (min-width:600px) {:root{--base-padding:40px;
--spacing-l:80px;
--spacing-xl:80px}}
@media screen and (min-width:1020px) {:root{--base-padding:60px}}
@media screen and (min-width:1380px) {:root{--spacing-m:60px;
--spacing-l:120px;
--spacing-xl:160px}}</style>

<meta http-equiv="origin-trial" content="A7bG5hJ4XpMV5a3V1wwAR0PalkFSxLOZeL9D/YBYdupYUIgUgGhfVJ1zBFOqGybb7gRhswfJ+AmO7S2rNK2IOwkAAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjY5NzY2Mzk5LCJpc1RoaXJkUGFydHkiOnRydWV9"><script type="text/javascript" async="" src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/954804604/?random=1664257263733&amp;cv=9&amp;fst=1664257263733&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=3&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2oa9l0&amp;sendb=1&amp;ig=1&amp;data=event%3Dgtag.config&amp;frm=0&amp;url=https%3A%2F%2Fwww.notion.so%2Fko-kr%2Fproduct%3Futm_source%3Dgoogle%26utm_campaign%3D10805039169%26utm_medium%3D104440699817%26utm_content%3D455555244419%26utm_term%3D%25EB%2585%25B8%25EC%2585%2598%26targetid%3Daud-840164194020%3Akwd-827502875973%26gclid%3DCjwKCAjwm8WZBhBUEiwA178UnKgmZx6sM6061aKwBBAPoF1NGajA2mlsosG3HgawPUN2ZEOyxKRBZBoCOj8QAvD_BwE&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=Notion%20(%EB%85%B8%EC%85%98)%20%E2%80%93%20%EB%AA%A8%EB%93%A0%20%ED%8C%80%EC%9D%84%20%EC%9C%84%ED%95%9C%20%ED%95%98%EB%82%98%EC%9D%98%20%EC%9B%8C%ED%81%AC%EC%8A%A4%ED%8E%98%EC%9D%B4%EC%8A%A4&amp;auid=330742119.1662089229&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script><script charset="utf-8" src="https://client.mutinycdn.com/mutiny-client/6.3.1.0-reorder6.js"></script><script type="text/javascript" async="" src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/954804604/?random=1664257264302&amp;cv=9&amp;fst=1664257264302&amp;num=1&amp;bg=ffffff&amp;guid=ON&amp;resp=GooglemKTybQhCsO&amp;u_h=1080&amp;u_w=1920&amp;u_ah=1040&amp;u_aw=1920&amp;u_cd=24&amp;u_his=3&amp;u_tz=540&amp;u_java=false&amp;u_nplug=5&amp;u_nmime=2&amp;gtm=2oa9l0&amp;sendb=1&amp;ig=1&amp;data=event%3Dform_submit&amp;frm=0&amp;url=https%3A%2F%2Fwww.notion.so%2Fko-kr%2Fproduct%3Futm_source%3Dgoogle%26utm_campaign%3D10805039169%26utm_medium%3D104440699817%26utm_content%3D455555244419%26utm_term%3D%25EB%2585%25B8%25EC%2585%2598%26targetid%3Daud-840164194020%3Akwd-827502875973%26gclid%3DCjwKCAjwm8WZBhBUEiwA178UnKgmZx6sM6061aKwBBAPoF1NGajA2mlsosG3HgawPUN2ZEOyxKRBZBoCOj8QAvD_BwE&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;tiba=Notion%20(%EB%85%B8%EC%85%98)%20%E2%80%93%20%EB%AA%A8%EB%93%A0%20%ED%8C%80%EC%9D%84%20%EC%9C%84%ED%95%9C%20%ED%95%98%EB%82%98%EC%9D%98%20%EC%9B%8C%ED%81%AC%EC%8A%A4%ED%8E%98%EC%9D%B4%EC%8A%A4&amp;auid=330742119.1662089229&amp;hn=www.googleadservices.com&amp;async=1&amp;rfmt=3&amp;fmt=4"></script><script type="text/javascript" async="" src="//munchkin.marketo.net/munchkin.js"></script><meta http-equiv="origin-trial" content="A7bG5hJ4XpMV5a3V1wwAR0PalkFSxLOZeL9D/YBYdupYUIgUgGhfVJ1zBFOqGybb7gRhswfJ+AmO7S2rNK2IOwkAAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjY5NzY2Mzk5LCJpc1RoaXJkUGFydHkiOnRydWV9"><meta http-equiv="origin-trial" content="A7bG5hJ4XpMV5a3V1wwAR0PalkFSxLOZeL9D/YBYdupYUIgUgGhfVJ1zBFOqGybb7gRhswfJ+AmO7S2rNK2IOwkAAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjY5NzY2Mzk5LCJpc1RoaXJkUGFydHkiOnRydWV9"><link as="script" rel="prefetch" href="/_next/static/chunks/8261-4ac715a015c19325.js"><link as="script" rel="prefetch" href="/_next/static/chunks/7294-62f2046ffb4a2c6a.js"><link as="script" rel="prefetch" href="/_next/static/chunks/pages/templates-ffea3a585ce74b60.js"><link as="script" rel="prefetch" href="/_next/static/chunks/2199-2648de8c872b8606.js"><link as="script" rel="prefetch" href="/_next/static/chunks/pages/templates/%5Bslug%5D-886f1a2de011bd13.js"><link as="script" rel="prefetch" href="/_next/static/chunks/pages/contact-sales-8563abe7261c51f0.js"><link as="script" rel="prefetch" href="/_next/static/chunks/pages/about-1ec50e2730fa5a9a.js"><link as="script" rel="prefetch" href="/_next/static/chunks/pages/careers-e2169765b301be00.js"><link as="script" rel="prefetch" href="/_next/static/chunks/pages/security-4aa7df9c3fe1e31f.js"><link as="script" rel="prefetch" href="/_next/static/chunks/469-0327c80a4f884f57.js"><link as="script" rel="prefetch" href="/_next/static/chunks/pages/releases-95ebaf7a8b3cb555.js"><link as="script" rel="prefetch" href="/_next/static/chunks/pages/affiliates-0c6e773998229003.js"><link as="script" rel="prefetch" href="/_next/static/chunks/pages/evernote-7f9beef8c7b52dbd.js"><link as="script" rel="prefetch" href="/_next/static/chunks/pages/confluence-e7747e4d4d2fbc9c.js"><style type="text/css" data-styled-jsx="">.logo.jsx-1064760108{display:block;
height:100%;
width:100%;
max-width:94px;
-webkit-box-flex:0;
-webkit-flex-grow:0;
-ms-flex-positive:0;
flex-grow:0}
.logo-limit-height.jsx-1064760108{max-height:30px;
object-fit:contain}
.logo-bw.jsx-1064760108{-webkit-filter:grayscale(100%);
filter:grayscale(100%)}</style></head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div>
		<header class="jsx-2604928324 header">
		<div class="jsx-2604928324 inner">
		<div class="jsx-2604928324 logo-wrap">
		<!-- 로고 이미지 -->
		<a aria-label="Notion – 홈" class="jsx-2604928324 logo" href="#"></a>
		</div>
<!-- 메뉴마다 각 페이지로 이동 -->
<div class="jsx-2604928324 desktop-actions">
<nav role="navigation" aria-label="Primary Navigation" class="jsx-846203990 nav">
<div class="jsx-bfc18ca12fb5954b nav-left">
<ul aria-label="submenu" class="jsx-bfc18ca12fb5954b nav-list">
<li aria-expanded="false" class="jsx-1177128220 nav-item has-menu">
<div tabindex="0" role="button" class="jsx-3643650412 hoverable">
<div class="jsx-1177128220 label">메뉴1</div>

<li aria-expanded="false" class="jsx-1177128220 nav-item has-menu">
<div tabindex="0" role="button" class="jsx-3643650412 hoverable">
<div class="jsx-1177128220 label">메뉴2</div>

<div class="jsx-1177128220 popup">
<div class="jsx-b5da7e2183c315f9 menu">
<div class="jsx-135324421 nav-section">
<ul aria-label="submenu" class="jsx-135324421 nav-list">
</ul></div></div></div></div></li>


<li aria-expanded="false" class="jsx-1177128220 nav-item has-menu">
<div tabindex="0" role="button" class="jsx-3643650412 hoverable">
<div class="jsx-1177128220 label">메뉴3</div>

<li aria-expanded="false" class="jsx-1177128220 nav-item has-menu">
<div tabindex="0" role="button" class="jsx-3643650412 hoverable">
<div class="jsx-1177128220 label">메뉴4</div>

<li aria-expanded="false" class="jsx-1177128220 nav-item">
	<a tabindex="0" class="jsx-3643650412 hoverable clickable has-action" href="/ko-kr/pricing">
</a></li></ul></div>

<div class="jsx-1028178840 nav-right non-english">
<ul aria-label="submenu" class="jsx-1028178840 nav-list nav-list-sales">
<li aria-expanded="false" class="jsx-1177128220 nav-item">
	<!-- Q@A게시판으로 연결하기-->
<a tabindex="0" class="jsx-3643650412 hoverable clickable has-action" href="#">
<div class="jsx-1177128220 label">영업팀에 문의하기</div></a></li></ul>
<div class="jsx-1028178840 divider"></div>
<ul aria-label="submenu" class="jsx-1028178840 nav-list">
<li aria-expanded="false" class="jsx-1177128220 nav-item">
<!-- 로그인 페이지로 연결하기 -->
<a tabindex="0" class="jsx-3643650412 hoverable clickable has-action" href="#">
<div class="jsx-1177128220 label">로그인</div></a></li>

<li class="jsx-1028178840 cta-item">
	<!-- 회원가입 페이지로 연결 -->
<a role="button" class="jsx-2971364727 button-link" href="#">
<div class="jsx-2971364727 button primary button-size-m">회원가입</div></a></li></ul></div></nav></div>
<div class="jsx-2604928324 mobile-actions">
</button></div></div>
</header>


<nav role="menu" class="jsx-1865826807 mobile-nav">
<div class="jsx-1865826807 mobile-nav-inner">
<div class="jsx-1865826807 mobile-nav-scrollable">


<div class="jsx-1865826807 actions">
<a role="button" class="jsx-2971364727 button-link" href="/signup">
<div class="jsx-2971364727 button primary full-width button-size-l">Notion 무료 체험</div></a>
<a role="button" class="jsx-2971364727 button-link" href="/login">
<div class="jsx-2971364727 button secondary full-width button-size-l">로그인</div></a></div></div></div></nav>
<div class="jsx-2604928324 spacer"></div>
<main class="jsx-1549916940 jsx-1382635649 main">
<section class="global-margin-l">
<div class="analytics-scroll-point" id="hero"></div>
<div class="global-grid-container global-grid-columns-12 global-grid-align-items-center">
<div class="global-grid-item global-grid-item-span-xs-12 global-grid-item-span-s-12 global-grid-item-span-m-5 global-grid-item-span-l-5 global-grid-item-span-xl-5 global-grid-item-order-m-2 global-grid-item-order-l-2 global-grid-item-order-xl-2">
<div class="jsx-1805324592 visual">
<span style="box-sizing:border-box;display:inline-block;overflow:hidden;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;position:relative;max-width:100%">
<span style="box-sizing:border-box;display:block;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0;max-width:100%">
<img style="display:block;max-width:100%;width:initial;height:initial;background:none;opacity:1;border:0;margin:0;padding:0" alt="" aria-hidden="true" src="data:image/svg+xml,%3csvg%20xmlns=%27http://www.w3.org/2000/svg%27%20version=%271.1%27%20width=%27500%27%20height=%27338%27/%3e"></span>
<!-- src 부분에 이미지 주소 넣기 -->
<img alt="이미지 넣을 예정!" role="img" srcset="/cdn-cgi/image/format=auto,width=640,quality=100/front-static/pages/product/home-page-hero-refreshed-v3.png 1x, /cdn-cgi/image/format=auto,width=1080,quality=100/front-static/pages/product/home-page-hero-refreshed-v3.png 2x" src="#" decoding="async" data-nimg="intrinsic" class="next-image" style="position:absolute;top:0;left:0;bottom:0;right:0;box-sizing:border-box;padding:0;border:none;margin:auto;display:block;width:0;height:0;min-width:100%;max-width:100%;min-height:100%;max-height:100%"></span></div></div>
<div class="global-grid-item global-grid-item-span-xs-12 global-grid-item-span-s-12 global-grid-item-span-m-7 global-grid-item-span-l-7 global-grid-item-span-xl-7 global-grid-item-order-m-1 global-grid-item-order-l-1 global-grid-item-order-xl-1">
<div class="jsx-1805324592 text-wrap">
<h1 class="global-title global-title global-title-color-dark global-title-weight-bold global-title-size-xl">여기에<br class="jsx-1805324592">문구 넣어주기</h1>
<div class="jsx-1805324592 subtitle-wrap">
<h2 class="global-title global-title global-title-color-medium global-title-weight-medium global-title-size-xxs">환영문구 넣어주세요</h2></div>
<div class="jsx-1805324592 button-wrap">
	<!-- 회원가입 페이지로 연결 -->
<a role="button" class="jsx-860427559 button-link" href="#">
<div class="jsx-860427559 button primary button-size-l">회원가입</div></a></div>
<div class="jsx-1805324592 trusted-by-wrap">
</section>
</main>
<!--빈 공간 채울?-->
<!-- footer 넣기 -->
<footer class="jsx-3166521707 footer">
<nav aria-label="Secondary footer navigation" class="jsx-3147728626 footer-bottom">
<div class="jsx-3147728626 footer-bottom-desktop">
<div class="jsx-2842611342 copyright">©<!-- -->2022<!-- --> Notion Labs, Inc.</div>

</body>
</html>