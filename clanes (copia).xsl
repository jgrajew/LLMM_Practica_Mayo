<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title>Nombre del Equipo</title>
    
                <link rel="stylesheet" href="css/estilos.css"/>
                <!-- gama de colores que se usará en la web, debe ser sustitído por los colores obtenidos de cada xml -->
                <style>
                    :root {
                        --color-clan: rgb(199, 79, 79);
                        --color-primario: #cdc9c7;
                        --color-secundario: #000;
                    }
                </style>
            </head>
            <body>
                <!-- #### Cabecera de la web #### -->
                <header class="content">
                    <div class="picture">
                        <img src="img/maqueta/logo3.png" alt="logo del clan"/>
                    </div>
                    <div class="header-texto">
                        <h1><xsl:value-of select="/clan/informacion/nombre_clan"/></h1>
                        <h2><xsl:value-of select="/clan/informacion/emblema"/></h2>
                        <p><xsl:value-of select="/clan/informacion/descripcion"/></p>
                    </div>
                </header>

                <!-- #### Fin Cabecera de la web #### -->
    <!-- #### Sección principal #### -->
    <!-- se muestran los integrantes principales del clan y su lider -->
    <main class="content">
        <h1>Miembros del clan</h1>
        <div class="fichas">

            <xsl:for-each select="//jugador[@rol='principal' or @rol='lider']">
            <article class="ficha {@rol}">
                <div class="picture">
                    <img src="<xsl" alt="A1"/>
                    <div class="puntos"><xsl:value-of select="sum(habilidades/habilidad)"/></div>
                </div>
                <h2><xsl:value-of select="jugador_nombre"/></h2>
                <h3><xsl:value-of select="raza"/></h3>
                <table class="skills-table">
                    <tr>
                        <th colspan="3">Habilidades</th>
                    </tr>
                    <tr>
                        <td>FUE:</td>
                        <td class="progress-item"><progress max="10" value="9"></progress></td>
                        <td>9</td>
                    </tr>
                    <tr>
                        <td>DES:</td>
                        <td class="progress-item"><progress max="10" value="3"></progress></td>
                        <td>3</td>
                    </tr>
                    <tr>
                        <td>CON:</td>
                        <td class="progress-item"><progress max="10" value="1"></progress></td>
                        <td>1</td>
                    </tr>
                    <tr>
                        <td>INT:</td>
                        <td class="progress-item"><progress max="10" value="8"></progress></td>
                        <td>8</td>
                    </tr>
                    <tr>
                        <td>SAB:</td>
                        <td class="progress-item"><progress max="10" value="10"></progress></td>
                        <td>10</td>
                    </tr>
                    <tr>
                        <td>CAR:</td>
                        <td class="progress-item"><progress max="10" value="8"></progress></td>
                        <td>8</td>
                    </tr>
                </table>
            </article>
        </xsl:for-each>
        </div>
    </main>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
