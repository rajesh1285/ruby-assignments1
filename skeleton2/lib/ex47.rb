<!DOCTYPE html>
<!-- saved from url=(0046)https://learnrubythehardway.org/book/ex47.html -->
<html class=" js flexbox flexboxlegacy canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">




<title>Learn Ruby the Hard Way - Read for Free</title>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="https://www.google-analytics.com/" rel="dns-prefetch">
<link href="https://ajax.googleapis.com/" rel="dns-prefetch">

<link href="./ex47_files/css" rel="stylesheet" type="text/css">
<link href="./ex47_files/style.min.css" rel="stylesheet">
<!-- http://www.socicon.com -->
<link href="./ex47_files/icons.css" rel="stylesheet">


<meta name="generator" content="Docutils 0.12: http://docutils.sourceforge.net/">
<title>Exercise 47: Automated Testing</title>

<style media="print" class="jx_ui_StyleSheet" __jx__id="___$_2" type="text/css">.zopim { display: none !important }</style></head>

<body class="baseline-grid-off book-site header--compressed" id="top" style=""><div class="zopim" __jx__id="___$_64 ___$_64" style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; padding: 0px; border: 0px; background: transparent; overflow: hidden; position: fixed; z-index: 16000002; width: 180px; height: 30px; right: 10px; bottom: 0px; display: none;" data-test-id="ChatWidgetButton"><iframe frameborder="0" src="./ex47_files/saved_resource.html" style="background-color: transparent; vertical-align: text-bottom; position: relative; width: 100%; height: 100%; min-width: 100%; min-height: 100%; max-width: 100%; max-height: 100%; margin: 0px; overflow: hidden; display: block;" data-test-id="ChatWidgetButton-iframe"></iframe></div><div class="zopim" __jx__id="___$_4 ___$_4" data-test-id="ChatWidgetWindow" style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; padding: 0px; border: 0px; background: transparent; overflow: hidden; position: fixed; z-index: 16000001; right: 15px; bottom: 0px; border-top-left-radius: 5px; border-top-right-radius: 5px; display: none; width: 350px; height: 450px; box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 3px 2px;"><iframe frameborder="0" src="./ex47_files/saved_resource(1).html" data-test-id="ChatWidgetWindow-iframe" style="background-color: transparent; vertical-align: text-bottom; position: relative; width: 100%; height: 100%; min-width: 100%; min-height: 100%; max-width: 100%; max-height: 100%; margin: 0px; overflow: hidden; display: block;"></iframe></div>




<div data-scrollmagic-pin-spacer="" class="scrollmagic-pin-spacer" style="top: auto; left: auto; bottom: auto; right: auto; margin: 0px; display: block; position: absolute; box-sizing: content-box; width: 100%; height: 110px;"><header class="header" role="banner" style="position: fixed; margin: auto; top: -40px; left: 0px; bottom: auto; right: auto; box-sizing: border-box;">
    <nav class="navbar navbar-full nav-brand-family">
        <div class="row middle-xs">
            <ul class="brand-links show-md col-xs-3 col-sm-10 bare">
                <li><a href="http://learncodethehardway.org/" class="waves-effect">Learn:</a></li>

                <li><a href="http://learncodethehardway.org/python/" class="waves-effect">Python</a></li>

                <li><a href="http://learncodethehardway.org/ruby/" class="waves-effect active">Ruby</a></li>

                <li><a href="http://learncodethehardway.org/more-python/" class="waves-effect">More Python</a></li>

                <li><a href="http://learncodethehardway.org/c/" class="waves-effect">C</a></li>

                <li><a href="http://learncodethehardway.org/sql/" class="waves-effect">SQL</a></li>

                <li><a href="http://learncodethehardway.org/javascript/" class="waves-effect">Javascript</a></li>

                <li><a href="http://learncodethehardway.org/unix/" class="waves-effect">Unix</a></li>

                <li><a href="http://learncodethehardway.org/regex/" class="waves-effect">RegEx</a></li>

                <li><a href="http://www.learndesignthehardway.com/" class="waves-effect">Design</a></li>

            </ul>
            <ul class="brand-links hide-md col-xs-3 col-sm-10 bare">
                <li><a href="http://learncodethehardway.org/" class="waves-effect">LCTHW</a></li>
            </ul>

            <ul class="site-meta col-xs-9 col-sm-2 end-xs bare">
                <li><a href="https://shop.learncodethehardway.org/access/reactivate/" class="waves-effect"><i class="icon icon-user"></i> Login</a></li>
            </ul>

        </div>
    </nav>

    <nav class="navbar navbar-full nav-main" role="navigation">
        <div class="row between-xs center-xs middle-xs bare">
            <div class="col-xs-4 start-xs bare">
                <a href="https://learnrubythehardway.org/book/ex47.html#" class="no-underline nav-trigger waves-effect" id="toc"><div class="transformer hamburcloser">
                        <div class="bar bar-t"></div>
                        <div class="bar bar-m-a"></div>
                        <div class="bar bar-m-b"></div>
                        <div class="bar bar-b"></div>
                </div><span class="nav-trigger_text show-sm-inline">Contents</span></a>
            </div>
            <div class="col-xs-4"><strong>&nbsp;</strong></div>
            <div class="col-xs-4 end-xs bare">
                <a href="https://helpthw.zendesk.com/hc/en-us" class="no-underline nav-trigger waves-effect" id="help"><div class="transformer questioncloser">
                        <div class="icon-question-mark"></div>
                </div><span class="nav-trigger_text show-sm-inline">Help</span></a>
            </div>
        </div>
    </nav>

</header></div>




<div class="masthead ruby-background" style="background-image: url(&#39;/images/pattern-ruby.svg&#39;)">
    <img src="./ex47_files/logo-ruby.svg" alt="Learn Ruby The Hard Way" class="logo">
</div>

<div class="wrapper">
    <aside class="sidebar sidebar-left sidebar--fixed" role="complementary">
        <nav class="side-nav-container">
            <ol class="table-of-contents">
                <h3>Table of Contents</h3>
                <li><a href="https://learnrubythehardway.org/book/preface.html">Preface</a></li>
                <li><a href="https://learnrubythehardway.org/book/intro.html">The Hard Way Is Easier</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex0.html">Ex0: The Setup</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex1.html">Ex1: A Good First Program</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex2.html">Ex2: Comments And Pound Characters</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex3.html">Ex3: Numbers And Math</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex4.html">Ex4: Variables And Names</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex5.html">Ex5: More Variables And Printing</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex6.html">Ex6: Strings And Text</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex7.html">Ex7: More Printing</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex8.html">Ex8: Printing, Printing</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex9.html">Ex9: Printing, Printing, Printing</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex10.html">Ex10: What Was That?</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex11.html">Ex11: Asking Questions</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex12.html">Ex12: Prompting People</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex13.html">Ex13: Parameters, Unpacking, Variables</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex14.html">Ex14: Prompting And Passing</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex15.html">Ex15: Reading Files</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex16.html">Ex16: Reading And Writing Files</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex17.html">Ex17: More Files</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex18.html">Ex18: Names, Variables, Code, Functions</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex19.html">Ex19: Functions And Variables</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex20.html">Ex20: Functions And Files</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex21.html">Ex21: Functions Can Return Something</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex22.html">Ex22: What Do You Know So Far?</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex23.html">Ex23: Read Some Code</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex24.html">Ex24: More Practice</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex25.html">Ex25: Even More Practice</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex26.html">Ex26: Congratulations, Take A Test!</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex27.html">Ex27: Memorizing Logic</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex28.html">Ex28: Boolean Practice</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex29.html">Ex29: What If</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex30.html">Ex30: Else And If</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex31.html">Ex31: Making Decisions</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex32.html">Ex32: Loops And Lists</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex33.html">Ex33: While Loops</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex34.html">Ex34: Accessing Elements Of Lists</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex35.html">Ex35: Branches and Functions</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex36.html">Ex36: Designing and Debugging</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex37.html">Ex37: Symbol Review</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex38.html">Ex38: Doing Things To Lists</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex39.html">Ex39: Dictionaries, Oh Lovely Dictionaries</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex40.html">Ex40: Modules, Classes, And Objects</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex41.html">Ex41: Learning To Speak Object Oriented</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex42.html">Ex42: Is-A, Has-A, Objects, and Classes</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex43.html">Ex43: Gothons From Planet Percal #25</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex44.html">Ex44: Inheritance Vs. Composition</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex45.html">Ex45: You Make A Game</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex46.html">Ex46: A Project Skeleton</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex47.html">Ex47: Automated Testing</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex48.html">Ex48: Advanced User Input</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex49.html">Ex49: Making Sentences</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex50.html">Ex50: Your First Website</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex51.html">Ex51: Getting Input From A Browser</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex52.html">Ex52: The Start Of Your Web Game</a></li>
                <li><a href="https://learnrubythehardway.org/book/advice.html">Advice From An Old Programmer</a></li>
                <li><a href="https://learnrubythehardway.org/book/next.html">Next Steps</a></li>
                <li><a href="https://learnrubythehardway.org/book/appendixa.html">Appendix A: Command Line Crash Course</a></li>
            </ol>
            <ul class="site-links">
                <h3>Learn the Hard Way</h3>
                <li><a href="https://learnrubythehardway.org/book/ex47.html#" class="waves-effect"><i class="icon-information"></i> About LPTHW</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex47.html#" class="waves-effect"><i class="icon-first-aid"></i> Help &amp; Support</a></li>
                <li><a href="https://learnrubythehardway.org/book/ex47.html#" class="waves-effect"><i class="icon-power-1"></i> Follow us on Twitter</a></li>
            </ul>
        </nav>
        <div class="colophon text-center">
            <div class="intro">
                <p class="bare-bottom" id="p0">
                The type for this book is set in 18px / 1.5
                <a href="https://www.google.com/fonts/specimen/Source+Serif+Pro">Adobe Serif</a>,
                <a href="https://www.google.com/fonts/specimen/Source+Sans+Pro">Sans</a>, and
                <a href="https://www.google.com/fonts/specimen/Source+Code+Pro">Code</a>.
                </p>
            </div>
            <div class="printers-mark">
                <div class="inscription">Docendo <i class="icon-repeat"></i> Discimus</div>
            </div>
        </div>
    </aside>

    <div class="overlay"></div>

    <main class="main ruby" role="main">
    <div class="main-container row center-xs">
        <div class="col-xs-11 col-sm-10 col-md-9 col-lg-8">

            <div class="content">
                <!--- RST STARTS -->
                <h1 class="title">Exercise 47: Automated Testing</h1>
                <p id="p1">Having to type commands into your game over and over to make sure it's working is annoying.  Wouldn't it be better to write little pieces of code that test your code?  Then when you make a change, or add a new thing to your program, you just "run your tests" and the tests make sure things are still working.  These automated tests won't catch all your bugs, but they will cut down on the time you spend repeatedly typing and running your code.</p>
<p id="p2">Every exercise after this one will not have a <em>What You Should See</em> section, but instead will have a <em>What You Should Test</em> section.  You will be writing automated tests for all of your code starting now, and this will hopefully make you an even better programmer.</p>
<p id="p3">I won't try to explain why you should write automated tests.  I will only say that you are trying to be a programmer, and programmers automate boring and tedious tasks.  Testing a piece of software is definitely boring and tedious, so you might as well write a little bit of code to do it for you.</p>
<p id="p4">That should be all the explanation you need because <em>your</em> reason for writing unit tests is to make your brain stronger.  You have gone through this book writing code to do things.  Now you are going to take the next leap and write code that knows about other code you have written.  This process of writing a test that runs some code you have written <em>forces</em> you to understand clearly what you have just written.  It solidifies in your brain exactly what it does and why it works and gives you a new level of attention to detail.</p>
<div class="section" id="writing-a-test-case">
<h1>Writing a Test Case</h1>
<p id="p5">We're going to take a very simple piece of code and write one simple test.  We're going to base this little test on a new project from your project skeleton.</p>
<p id="p6">First, make a <tt class="docutils literal">ex47</tt> project from your project skeleton.  Here are the steps you would take.  I'm going to give these instructions in English rather than show you how to type them so that <em>you</em> have to figure it out.</p>
<ol class="arabic simple">
<li>Copy <tt class="docutils literal">skeleton</tt> to <tt class="docutils literal">ex47</tt>.</li>
<li>Rename everything with <tt class="docutils literal">NAME</tt> to <tt class="docutils literal">ex47</tt>.</li>
<li>Change the word <tt class="docutils literal">NAME</tt> in all the files to <tt class="docutils literal">ex47</tt>.</li>
</ol>
<p id="p7">Here's me doing it:</p>
<div class="highlight"><pre><span></span><a name="ruby--ex47setup.sh-session-pyg.html-1"></a><span class="gp">$</span> cp -r skeleton ex47
<a name="ruby--ex47setup.sh-session-pyg.html-2"></a><span class="gp">$</span> <span class="nb">cd</span> ex47
<a name="ruby--ex47setup.sh-session-pyg.html-3"></a><span class="gp">$</span> ls
<a name="ruby--ex47setup.sh-session-pyg.html-4"></a><span class="go">NAME.gemspec   bin             doc             lib</span>
<a name="ruby--ex47setup.sh-session-pyg.html-5"></a><span class="go">Rakefile       data            ext             tests</span>
<a name="ruby--ex47setup.sh-session-pyg.html-6"></a><span class="gp">$</span> mv NAME.gemspec ex47.gemspec
<a name="ruby--ex47setup.sh-session-pyg.html-7"></a><span class="gp">$</span> mv bin/NAME bin/ex47
<a name="ruby--ex47setup.sh-session-pyg.html-8"></a><span class="gp">$</span> mv tests/test_NAME.rb tests/test_ex47.rb
<a name="ruby--ex47setup.sh-session-pyg.html-9"></a><span class="gp">$</span> mv lib/NAME lib/ex47
<a name="ruby--ex47setup.sh-session-pyg.html-10"></a><span class="gp">$</span> mv lib/NAME.rb lib/ex47.rb
<a name="ruby--ex47setup.sh-session-pyg.html-11"></a><span class="gp">$</span> find . -name <span class="s2">"*NAME*"</span> -print
<a name="ruby--ex47setup.sh-session-pyg.html-12"></a><span class="gp">$</span>
</pre></div><p id="p8">That last command will find any other files with "NAME" in them so you can change them if you missed some.  Refer back to Exercise 46 if you get stuck, and if you can't do this easily then  maybe practice it a few times.</p>
<p id="p9">Next, create a simple file <tt class="docutils literal">lib/ex47/game.rb</tt> where you can put the code to test.  This will be a very silly little class that we want to test with this code in it:</p>
<table class="highlighttable"><tbody><tr><td class="linenos"><div class="linenodiv"><pre> 1
 2
 3
 4
 5
 6
 7
 8
 9
10
11
12
13
14
15
16
17
18
19
20
21
22</pre></div></td><td class="code"><div class="highlight"><pre><span></span><a name="ruby--ex47--lib--ex47--game.rb-idio.html-1"></a><span class="k">class</span> <span class="nc">Room</span>
<a name="ruby--ex47--lib--ex47--game.rb-idio.html-2"></a>
<a name="ruby--ex47--lib--ex47--game.rb-idio.html-3"></a>  <span class="k">def</span> <span class="nf">initialize</span><span class="p">(</span><span class="nb">name</span><span class="p">,</span> <span class="n">description</span><span class="p">)</span>
<a name="ruby--ex47--lib--ex47--game.rb-idio.html-4"></a>    <span class="vi">@name</span> <span class="o">=</span> <span class="nb">name</span>
<a name="ruby--ex47--lib--ex47--game.rb-idio.html-5"></a>    <span class="vi">@description</span> <span class="o">=</span> <span class="n">description</span>
<a name="ruby--ex47--lib--ex47--game.rb-idio.html-6"></a>    <span class="vi">@paths</span> <span class="o">=</span> <span class="p">{}</span>
<a name="ruby--ex47--lib--ex47--game.rb-idio.html-7"></a>  <span class="k">end</span>
<a name="ruby--ex47--lib--ex47--game.rb-idio.html-8"></a>
<a name="ruby--ex47--lib--ex47--game.rb-idio.html-9"></a>  <span class="c1"># these make it easy for you to access the variables</span>
<a name="ruby--ex47--lib--ex47--game.rb-idio.html-10"></a>  <span class="kp">attr_reader</span> <span class="ss">:name</span>
<a name="ruby--ex47--lib--ex47--game.rb-idio.html-11"></a>  <span class="kp">attr_reader</span> <span class="ss">:paths</span>
<a name="ruby--ex47--lib--ex47--game.rb-idio.html-12"></a>  <span class="kp">attr_reader</span> <span class="ss">:description</span>
<a name="ruby--ex47--lib--ex47--game.rb-idio.html-13"></a>
<a name="ruby--ex47--lib--ex47--game.rb-idio.html-14"></a>  <span class="k">def</span> <span class="nf">go</span><span class="p">(</span><span class="n">direction</span><span class="p">)</span>
<a name="ruby--ex47--lib--ex47--game.rb-idio.html-15"></a>    <span class="k">return</span> <span class="vi">@paths</span><span class="o">[</span><span class="n">direction</span><span class="o">]</span>
<a name="ruby--ex47--lib--ex47--game.rb-idio.html-16"></a>  <span class="k">end</span>
<a name="ruby--ex47--lib--ex47--game.rb-idio.html-17"></a>
<a name="ruby--ex47--lib--ex47--game.rb-idio.html-18"></a>  <span class="k">def</span> <span class="nf">add_paths</span><span class="p">(</span><span class="n">paths</span><span class="p">)</span>
<a name="ruby--ex47--lib--ex47--game.rb-idio.html-19"></a>    <span class="vi">@paths</span><span class="o">.</span><span class="n">update</span><span class="p">(</span><span class="n">paths</span><span class="p">)</span>
<a name="ruby--ex47--lib--ex47--game.rb-idio.html-20"></a>  <span class="k">end</span>
<a name="ruby--ex47--lib--ex47--game.rb-idio.html-21"></a>
<a name="ruby--ex47--lib--ex47--game.rb-idio.html-22"></a><span class="k">end</span>
</pre></div>
</td></tr></tbody></table><p id="p10">Once you have that file, change the unit test in <tt class="docutils literal">tests/test_ex47.rb</tt> to this:</p>
<table class="highlighttable"><tbody><tr><td class="linenos"><div class="linenodiv"><pre> 1
 2
 3
 4
 5
 6
 7
 8
 9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38</pre></div></td><td class="code"><div class="highlight"><pre><span></span><a name="ruby--ex47--tests--test_ex47.rb-idio.html-1"></a><span class="nb">require</span> <span class="s2">"ex47/game.rb"</span>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-2"></a><span class="nb">require</span> <span class="s2">"test/unit"</span>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-3"></a>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-4"></a><span class="k">class</span> <span class="nc">TestGame</span> <span class="o">&lt;</span> <span class="no">Test</span><span class="o">::</span><span class="no">Unit</span><span class="o">::</span><span class="no">TestCase</span>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-5"></a>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-6"></a>    <span class="k">def</span> <span class="nf">test_room</span><span class="p">()</span>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-7"></a>        <span class="n">gold</span> <span class="o">=</span> <span class="no">Room</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="s2">"GoldRoom"</span><span class="p">,</span>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-8"></a>                    <span class="s2">"""This room has gold in it you can grab. There's a</span>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-9"></a><span class="s2">                door to the north."""</span><span class="p">)</span>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-10"></a>        <span class="n">assert_equal</span><span class="p">(</span><span class="s2">"GoldRoom"</span><span class="p">,</span> <span class="n">gold</span><span class="o">.</span><span class="n">name</span><span class="p">)</span>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-11"></a>        <span class="n">assert_equal</span><span class="p">({},</span> <span class="n">gold</span><span class="o">.</span><span class="n">paths</span><span class="p">)</span>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-12"></a>    <span class="k">end</span>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-13"></a>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-14"></a>    <span class="k">def</span> <span class="nf">test_room_paths</span><span class="p">()</span>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-15"></a>        <span class="n">center</span> <span class="o">=</span> <span class="no">Room</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="s2">"Center"</span><span class="p">,</span> <span class="s2">"Test room in the center."</span><span class="p">)</span>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-16"></a>        <span class="n">north</span> <span class="o">=</span> <span class="no">Room</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="s2">"North"</span><span class="p">,</span> <span class="s2">"Test room in the north."</span><span class="p">)</span>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-17"></a>        <span class="n">south</span> <span class="o">=</span> <span class="no">Room</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="s2">"South"</span><span class="p">,</span> <span class="s2">"Test room in the south."</span><span class="p">)</span>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-18"></a>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-19"></a>        <span class="n">center</span><span class="o">.</span><span class="n">add_paths</span><span class="p">({</span><span class="s1">'north'</span><span class="o">=&gt;</span> <span class="n">north</span><span class="p">,</span> <span class="s1">'south'</span><span class="o">=&gt;</span> <span class="n">south</span><span class="p">})</span>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-20"></a>        <span class="n">assert_equal</span><span class="p">(</span><span class="n">north</span><span class="p">,</span> <span class="n">center</span><span class="o">.</span><span class="n">go</span><span class="p">(</span><span class="s1">'north'</span><span class="p">))</span>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-21"></a>        <span class="n">assert_equal</span><span class="p">(</span><span class="n">south</span><span class="p">,</span> <span class="n">center</span><span class="o">.</span><span class="n">go</span><span class="p">(</span><span class="s1">'south'</span><span class="p">))</span>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-22"></a>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-23"></a>    <span class="k">end</span>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-24"></a>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-25"></a>    <span class="k">def</span> <span class="nf">test_map</span><span class="p">()</span>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-26"></a>        <span class="n">start</span> <span class="o">=</span> <span class="no">Room</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="s2">"Start"</span><span class="p">,</span> <span class="s2">"You can go west and down a hole."</span><span class="p">)</span>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-27"></a>        <span class="n">west</span> <span class="o">=</span> <span class="no">Room</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="s2">"Trees"</span><span class="p">,</span> <span class="s2">"There are trees here, you can go east."</span><span class="p">)</span>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-28"></a>        <span class="n">down</span> <span class="o">=</span> <span class="no">Room</span><span class="o">.</span><span class="n">new</span><span class="p">(</span><span class="s2">"Dungeon"</span><span class="p">,</span> <span class="s2">"It's dark down here, you can go up."</span><span class="p">)</span>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-29"></a>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-30"></a>        <span class="n">start</span><span class="o">.</span><span class="n">add_paths</span><span class="p">({</span><span class="s1">'west'</span><span class="o">=&gt;</span> <span class="n">west</span><span class="p">,</span> <span class="s1">'down'</span><span class="o">=&gt;</span> <span class="n">down</span><span class="p">})</span>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-31"></a>        <span class="n">west</span><span class="o">.</span><span class="n">add_paths</span><span class="p">({</span><span class="s1">'east'</span><span class="o">=&gt;</span> <span class="n">start</span><span class="p">})</span>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-32"></a>        <span class="n">down</span><span class="o">.</span><span class="n">add_paths</span><span class="p">({</span><span class="s1">'up'</span><span class="o">=&gt;</span> <span class="n">start</span><span class="p">})</span>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-33"></a>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-34"></a>        <span class="n">assert_equal</span><span class="p">(</span><span class="n">west</span><span class="p">,</span> <span class="n">start</span><span class="o">.</span><span class="n">go</span><span class="p">(</span><span class="s1">'west'</span><span class="p">))</span>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-35"></a>        <span class="n">assert_equal</span><span class="p">(</span><span class="n">start</span><span class="p">,</span> <span class="n">start</span><span class="o">.</span><span class="n">go</span><span class="p">(</span><span class="s1">'west'</span><span class="p">)</span><span class="o">.</span><span class="n">go</span><span class="p">(</span><span class="s1">'east'</span><span class="p">))</span>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-36"></a>        <span class="n">assert_equal</span><span class="p">(</span><span class="n">start</span><span class="p">,</span> <span class="n">start</span><span class="o">.</span><span class="n">go</span><span class="p">(</span><span class="s1">'down'</span><span class="p">)</span><span class="o">.</span><span class="n">go</span><span class="p">(</span><span class="s1">'up'</span><span class="p">))</span>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-37"></a>    <span class="k">end</span>
<a name="ruby--ex47--tests--test_ex47.rb-idio.html-38"></a><span class="k">end</span>
</pre></div>
</td></tr></tbody></table><p id="p11">This file imports the <tt class="docutils literal">Room</tt> class you made in the <tt class="docutils literal">ex47/game.rb</tt> file so that you can do tests on it.  There is then a set of tests that are functions starting with <tt class="docutils literal">test_</tt>.  Inside each test case there's a bit of code that makes a room or a set of rooms, and then makes sure the rooms work the way you expect them to work.  It tests out the basic room features, then the paths, then tries out a whole map.</p>
<p id="p12">The important functions here are <tt class="docutils literal">assert_equal</tt> which makes sure that variables you have set or paths you have built in a <tt class="docutils literal">Room</tt> are actually what you think they are.  If you get the wrong result, then <tt class="docutils literal">rake test</tt> (actually <tt class="docutils literal"><span class="pre">Test::Unit</span></tt>) will print out an error message so you can figure it out.</p>
</div>
<div class="section" id="testing-guidelines">
<h1>Testing Guidelines</h1>
<p id="p13">Follow this general set of guidelines when making your tests:</p>
<ol class="arabic simple">
<li>Test files go in <tt class="docutils literal">tests/</tt> and are named <tt class="docutils literal">test_BLAH.rb</tt> otherwise <tt class="docutils literal">rake test</tt> won't run them.  This also keeps your tests from clashing with your other code.</li>
<li>Write one test file for each module you make.</li>
<li>Keep your test cases (functions) short, but do not worry if they are a bit messy.  Test cases are usually kind of messy.</li>
<li>Even though test cases are messy, try to keep them clean and remove any repetitive code you can.  Create helper functions that get rid of duplicate code.  You will thank me later when you make a change and then have to change your tests.  Duplicated code will make changing your tests more difficult.</li>
<li>Do not get too attached to your tests.  Sometimes, the best way to redesign something is to just delete it and start over.</li>
</ol>
</div>
<div class="section" id="what-you-should-see">
<h1>What You Should See</h1>
<div class="highlight"><pre><span></span><a name="ruby--ex47.sh-session-pyg.html-1"></a><span class="gp">$</span> rake <span class="nb">test</span>
<a name="ruby--ex47.sh-session-pyg.html-2"></a><span class="go">(in /Users/zedshaw/projects/books/learn-pyrb-the-hard-way/ruby/ex47)</span>
<a name="ruby--ex47.sh-session-pyg.html-3"></a><span class="go">/System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/bin/ruby -I"lib:tests" "/System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/lib/ruby/1.8/rake/rake_test_loader.rb" "tests/test_ex47.rb" </span>
<a name="ruby--ex47.sh-session-pyg.html-4"></a><span class="go">Loaded suite /System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/lib/ruby/1.8/rake/rake_test_loader</span>
<a name="ruby--ex47.sh-session-pyg.html-5"></a><span class="go">Started</span>
<a name="ruby--ex47.sh-session-pyg.html-6"></a><span class="go">...</span>
<a name="ruby--ex47.sh-session-pyg.html-7"></a><span class="go">Finished in 0.000398 seconds.</span>
<a name="ruby--ex47.sh-session-pyg.html-8"></a>
<a name="ruby--ex47.sh-session-pyg.html-9"></a><span class="go">3 tests, 7 assertions, 0 failures, 0 errors</span>
</pre></div><p id="p14">That's what you should see if everything is working right.  Try causing an error to see what that looks like and then fix it.</p>
</div>
<div class="section" id="study-drills">
<h1>Study Drills</h1>
<ol class="arabic simple">
<li>Go read about Ruby's <tt class="docutils literal"><span class="pre">Test::Unit</span></tt> more, and also read about alternatives.</li>
<li>Write a new test case in <tt class="docutils literal">tests/test_ex47.rb</tt> that creates a miniature version of your game from Exercise 45.  This is one function that is similar to the current functions, but using your game's room names and abbreviated descriptions.  Remember to use <tt class="docutils literal">Room.add_paths</tt> to create the map, and use assertions to confirm everything works as expected.</li>
</ol>
</div>
<div class="section" id="common-student-questions">
<h1>Common Student Questions</h1>
<dl class="docutils">
<dt>I get a syntax error when I run <tt class="docutils literal">rake test</tt>.</dt>
<dd>If you get this error then look at what the error says and fix that line of code or the ones above it.  Tools like <tt class="docutils literal"><span class="pre">Test::Unit</span></tt> (which <tt class="docutils literal">rake test</tt> runs) are running your code and the test code, so they will find syntax errors the same as running Ruby will.</dd>
<dt>I can't import <tt class="docutils literal">ex47/game.rb</tt>?</dt>
<dd>Make sure you create the <tt class="docutils literal">Rakefile</tt> file as specified in Exercise 46.  You most likely got this wrong.  You must also <em>not</em> be in the <tt class="docutils literal">tests</tt> directory.  Again, refer back to Exercise 46.</dd>
</dl>
</div>
                <!-- RST ENDS -->
            </div>


<div class="row between-xs center-xs middle-xs bare" id="notice" style="background-color: #eee">
    <div class="col-xs-11 col-sm-10 col-md-9 col-lg-8">
        <h1>Learn MORE Python Pre-Order Now</h1>
        <p>You can now <b><a href="http://bit.ly/buylmorepthw">Pre-Order</a></b> Learn More Python The Hard Way. Get it now at <a href="http://bit.ly/buylmorepthw">http://bit.ly/buylmorepthw</a> for <b>$29.99</b> before the price goes up! </p>

    </div>
</div>

        </div>

        <div class="row center-xs" id="buy">
            <div class="text-center col-xs-10 col-sm-5 col-md-4">
                <h2 class="section-title__small">Buy DRM-Free</h2>
                <p id="p15">
                When you buy directly from the author, Zed A. Shaw, you'll get a professional
                quality PDF and  hours of HD Video, all DRM-free and yours to download.
                </p>

                <p class="price-block" id="p16">
                <span class="currency"><span class="prefix">$</span>29.<span class="suffix">99</span></span>
                </p>

                <a href="https://shop.learncodethehardway.org/access/buy/5/" class="btn btn-primary btn-full">Buy Directly From The Author</a>

                <p class="text-left btn-subtext" id="p17">
                <small>Or, you can <a href="https://learnrubythehardway.org/book/">read Learn Ruby the Hard Way for free</a> right here, video lectures not included.</small>
                </p>

            </div>
            <div class="text-center col-xs-10 col-sm-5 col-md-4 col-sm-offset-1">

                <h2 class="section-title__small">Other Buying Options</h2>
                <a href="http://bit.ly/amznlrthw" class="btn btn-secondary btn-full">Buy on Amazon</a>
                <a href="http://bit.ly/informitlrthw" class="btn btn-secondary btn-full">Buy a hard copy from the Publisher</a>
                <a href="http://bit.ly/bnlrthw" class="btn btn-secondary btn-full">Buy a hard copy from Barnes &amp; Noble</a>

            </div>
        </div>
    </div>


    <div class="row center-xs" id="video_holder" style="display: none">
        <div class="col-xs-11 col-sm-10 col-md-9 col-lg-8">
            <div data-paydiv_product="5" id="paydiv"></div>
        </div>
    </div>

    </main>

</div>

<div class="row dark bottom-nav">
    <div class="col-xs text-left">
        <a href="https://learnrubythehardway.org/book/ex46.html" class="prev" id="prev_link"><i class="icon-arrow-67"></i> <i class="icon icon-arrow-left"></i> Previous <span class="hide-xs show-sm-inline">Lesson</span></a>
    </div>
    <div class="col-xs text-right"><a href="https://learnrubythehardway.org/book/ex48.html" class="next" id="next_link">Next <span class="hide-xs show-sm-inline">Lesson</span> <i class="icon icon-arrow-right"></i></a>
    </div>
</div>
  

<footer class="footer">
<div class="row center-xs">

    <div class="col-xs-11 col-sm-6 col-md-5 col-lg-5">
        <ul class="nav nav-inline">
            <li><h4><a href="https://learnrubythehardway.org/">Home</a></h4></li>
            <li><h4><a href="https://learncodethehardway.org/about/">About</a></h4></li>
            <li><h4><a href="https://learncodethehardway.org/contact/">Contact</a></h4></li>
        </ul>
        <div class="copyright text-left">
            <small class="text-muted">© Zed A. Shaw. All rights reserved.</small>
        </div>
    </div>
    <div class="col-xs-11 col-sm-4 col-md-4 col-lg-3">
        <div class="social-media">
            <div class="classy-container">
                <a href="https://twitter.com/lzsthw" class="socicon-twitter"></a>
            </div>
        </div>
    </div>
</div>

</footer>
<script async="" charset="utf-8" src="./ex47_files/saved_resource" type="text/javascript"></script><script async="" src="./ex47_files/analytics.js"></script><script src="./ex47_files/scripts.min.js"></script>

<script src="./ex47_files/jquery.js"></script>
<script src="./ex47_files/index.js"></script>
<script src="./ex47_files/jzed.js"></script>
<script src="./ex47_files/video.js"></script>
<link rel="stylesheet" href="./ex47_files/video-js.css">
<script src="./ex47_files/paydiv.js"></script>
<script src="./ex47_files/app.js"></script>
<script src="./ex47_files/littools.js"></script>
<!-- Start of helpthw Zendesk Widget script -->
<iframe src="javascript:false" title="" style="display: none;" src="./ex47_files/saved_resource(2).html"></iframe><script>/*<![CDATA[*/window.zEmbed||function(e,t){var n,o,d,i,s,a=[],r=document.createElement("iframe");window.zEmbed=function(){a.push(arguments)},window.zE=window.zE||window.zEmbed,r.src="javascript:false",r.title="",r.role="presentation",(r.frameElement||r).style.cssText="display: none",d=document.getElementsByTagName("script"),d=d[d.length-1],d.parentNode.insertBefore(r,d),i=r.contentWindow,s=i.document;try{o=s}catch(e){n=document.domain,r.src='javascript:var d=document.open();d.domain="'+n+'";void(0);',o=s}o.open()._l=function(){var o=this.createElement("script");n&&(this.domain=n),o.id="js-iframe-async",o.src=e,this.t=+new Date,this.zendeskHost=t,this.zEQueue=a,this.body.appendChild(o)},o.write('<body onload="document._l();">'),o.close()}("https://assets.zendesk.com/embeddable_framework/main.js","helpthw.zendesk.com");
/*]]>*/</script>
<!-- End of helpthw Zendesk Widget script -->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-24168052-17', 'auto');
  ga('send', 'pageview');

</script>



<script>
    (function(d,s){var z=$zopim,$=z.s= d.createElement(s),e=d.getElementsByTagName(s)[0];
    $.async=!0;$.setAttribute('charset','utf-8');
    $.src='https://v2.zopim.com/?43bhyAkp3pYCNphTsHWmY6JMyxmxLXDu';
    z.t=+new Date;$. type='text/javascript';e.parentNode.insertBefore($,e)})(document,'script');
  </script><div><iframe data-reactroot="" id="automaticAnswers" class="zEWidget-automaticAnswers" tabindex="-1" style="border: none; background: transparent; z-index: 2147483647; transform: translateZ(0px); position: fixed; opacity: 0; right: 0px; bottom: 0px; margin: 0px 6px 6px 0px; height: 188px; width: 410px; transition-property: none; transition-timing-function: unset; top: -9999px;" src="./ex47_files/saved_resource(3).html"></iframe></div><div><iframe data-reactroot="" id="launcher" tabindex="0" class="zEWidget-launcher zEWidget-launcher--active" style="border: none; background: transparent; z-index: 999998; transform: translateZ(0px); position: fixed; opacity: 1; right: 0px; bottom: 0px; width: 112px; height: 48px; margin: 10px 20px; transition-property: opacity, width, height, bottom; transition-timing-function: ease-out; transition-duration: 300ms;" src="./ex47_files/saved_resource(4).html"></iframe></div><div><iframe data-reactroot="" id="ipm" class="zEWidget-ipm" tabindex="-1" style="border: none; background: transparent; z-index: 2147483647; transform: translateZ(0px); position: fixed; opacity: 0; right: 0px; top: -245px; margin-right: 15px; margin-top: 0px; height: 195px; width: 395px; transition-property: none; transition-timing-function: unset;" src="./ex47_files/saved_resource(5).html"></iframe></div><div><iframe data-reactroot="" id="webWidget" tabindex="-1" class="zEWidget-webWidget " style="border: none; background: transparent; z-index: 999999; transform: translateZ(0px); position: fixed; opacity: 0; right: 0px; bottom: 0px; width: 357px; margin-left: 15px; margin-right: 15px; height: 15px; transition-property: none; transition-timing-function: unset; top: -9999px;" src="./ex47_files/saved_resource(6).html"></iframe></div><style></style><iframe style="background-color: transparent; position: absolute; height: 1px; width: 1px; top: -9999px; left: -9999px; border: 0px;" src="./ex47_files/saved_resource(7).html"></iframe><iframe style="background-color: transparent; position: absolute; height: 1px; width: 1px; top: -9999px; left: -9999px; border: 0px;" src="./ex47_files/saved_resource(8).html"></iframe></body></html>