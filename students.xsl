<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0" 
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">  
<xsl:template match = "/"> 

<html> 
     <head>
        <title>
            STUDENT MARKSHEET
        </title>
    </head>
<body> 
    <h2>SEMESTER MARKSHEET</h2> 
    <table border = "1"> 
    <tr bgcolor = "yellow" height="50"> 
    <th align="center">COURSE_CODE</th> 
    <th>COURSE_TITLE</th> 
    <th>COURSE_CREDITS</th>  
    <th>GRADE</th>
    <th>CREDITS_EARNED</th> 
    <th>GRADE_POINTS</th>
    <th>CxGP</th>
   </tr> 
  
    <xsl:for-each select="class/student"> 
<tr bgcolor = "aqua" height="50"> 
<td align="center"> 
    <xsl:value-of select = "@COURSE_CODE"/> 
</td> 
    <td align="center" width="100"><xsl:value-of select = "COURSE_TITLE"/></td> 
    <td align="center" width="100"><xsl:value-of select = "COURSE_CREDITS"/></td> 
    <td align="center" width="100"><xsl:value-of select = "GRADE"/></td> 
    <td align="center" width="100"><xsl:value-of select = "CREDITS_EARNED"/></td> 
    <td align="center" width="100"><xsl:value-of select = "GRADE_POINTS"/></td>  
    <td align="center" width="100"><xsl:value-of select = "CxGP"/></td> 
</tr> 
    </xsl:for-each> 
    </table> 
</body> 
</html> 
</xsl:template> 
</xsl:stylesheet>
