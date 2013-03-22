---
layout: post
title: "I challange you"
category: posts
---
A while ago I talked about running a programming challenge for COSI. I finally found a problem that both ::buzzco:: and I thought would be cool to write up. I challenge anyone who reads this page to try it. I hope you guys all work on it, but don't post your solutions until July 13th. That gives everyone chance to give it a go even if time is short for them. Ok, the problem, I have a plastic puzzle toy that I've have for 10 years or so. I never solved it as it's much harder than it looks. It's a plastic soccer ball that is in pieces. But to state the problem more formally:

###Assembling a truncated icosahedron (soccer ball)###

This is a 32 sided shape made up of 20 hexagons and 12 pentagons. The are not all identical however, there are 6 pairs of 2 for the hexagons and 4 pairs of 3 for the pentagons. I made up a couple tables to define the pieces. 1-6 are the faces with notches or slots. A-Z are the actual pieces, remember each hexagonal piece is a pair, aka there are 2 A's, 2 B's etc. For the pentagonal pieces there are three, 3 X's etc. So go to it, here are the tables describing the pieces: 

<table><tr><td valign="top">
<table border=1 cellpadding=2 cellspacing=0>
    <tr><th colspan=7>Hexagonal Mapping</th></tr>
    <tr> 
        <td></td> 
        <td>1</td>
        <td>2</td>

        <td>3</td>
        <td>4</td>
        <td>5</td>
        <td>6</td>
    </tr>
    <tr> 
        <td>A</td>

        <td>1</td>
        <td>0</td>
        <td>0</td>
        <td>1</td>
        <td>1</td>
        <td>0</td>

    </tr>
    <tr> 
        <td>B</td>
        <td>1</td>
        <td>1</td>
        <td>0</td>
        <td>0</td>

        <td>1</td>
        <td>1</td>
    </tr>
    <tr> 
        <td>C</td>
        <td>1</td>
        <td>0</td>

        <td>1</td>
        <td>0</td>
        <td>1</td>
        <td>0</td>
    </tr>
    <tr> 
        <td>D</td>

        <td>0</td>
        <td>0</td>
        <td>1</td>
        <td>0</td>
        <td>0</td>
        <td>1</td>

    </tr>
    <tr> 
        <td>E</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>1</td>

        <td>0</td>
        <td>1</td>
    </tr>
    <tr> 
        <td>F</td>
        <td>1</td>
        <td>0</td>

        <td>1</td>
        <td>1</td>
        <td>0</td>
        <td>0</td>
    </tr>
    <tr> 
        <td>G</td>

        <td>1</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>

    </tr>
    <tr> 
        <td>H</td>
        <td>1</td>
        <td>0</td>
        <td>1</td>
        <td>1</td>

        <td>1</td>
        <td>0</td>
    </tr>
    <tr> 
        <td>I</td>
        <td>1</td>
        <td>1</td>

        <td>1</td>
        <td>0</td>
        <td>0</td>
        <td>0</td>
    </tr>
    <tr> 
        <td>J</td>

        <td>1</td>
        <td>1</td>
        <td>0</td>
        <td>1</td>
        <td>1</td>
        <td>0</td>

    </tr>
</table></td>
<td valign="top"><table border=1 cellpadding=2 cellspacing=0>
    <tr><th colspan=6>Pentagonal Mapping</th></tr>
    <tr> 
        <td></td> 
        <td>1</td>
        <td>2</td>
        <td>3</td>

        <td>4</td>
        <td>5</td>
    </tr>
    <tr> 
        <td>W</td>
        <td>0</td>
        <td>0</td>

        <td>1</td>
        <td>0</td>
        <td>1</td>
    </tr>
    <tr> 
        <td>X</td>
        <td>0</td>

        <td>1</td>
        <td>1</td>
        <td>0</td>
        <td>0</td>
    </tr>
    <tr> 
        <td>Y</td>

        <td>0</td>
        <td>1</td>
        <td>1</td>
        <td>1</td>
        <td>0</td>
    </tr>

    <tr> 
        <td>Z</td>
        <td>0</td>
        <td>1</td>
        <td>0</td>
        <td>1</td>
        <td>1</td>

    </tr>
</table>
</td></tr></table>

