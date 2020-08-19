<?php 
	include_once('../modelo/producto.php');
    include_once('../modelo/carrito.php');
	$product = new Product();
	$cart = new Cart();
	if(isset($_GET['action'])){
		switch ($_GET['action']){
			case 'add':
				$cart->add_item($_GET['code'], $_GET['amount']);
			break;
			case 'remove':
				$cart->remove_item($_GET['code']);
			break;
		}
	}
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Compras</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, user-scaleble=no, inicial-scale=1, maximum-scale=1, minimum-scale=1">
        <link rel="stylesheet" href="css/scar.css">
        <link rel="stylesheet" href="../../../css/menu.css">
        <script type="text/javascript" src="js/functions.js"></script>
    </head>
    <body>
        <header>
            <div class="menu">
                <nav id="navegacion-menu">
                    <div class="logo">
                        <a href="../../../index.html"><img src="../../../img/2.jpg"></a>
                    </div>
                    <div class="icono" id="icono">
                        <!--<span>&#9776;</span>-->
                        <h3>X</h3>
                    </div>
                    <div class="navegacion enlaces uno" id="enlaces">
                        <a href="../../trabajo.html" class="activar">¿Buscas Trabajo?</a>
                        <a href="../../productos.html">Productos</a>
                        <a href="../../catering.html">Catering</a>
                        <a href="../../contactos.html">Contactos</a>
                        <a href="index.php">Compras</a>
                    </div>
                </nav>
            </div>
        </header>
        <div class="contenido">
            <div class="contenido-total">
				<div class="contenido-productos">
					<table class="tablaProducto" border="1px" cellpadding="5px">
						<thead class="cabezaCuerpo">
							<tr>
								<th class="titulo" colspan="6">Categoria: Cafeteria</th>
							</tr>
							<tr class="estructura">
								<th>Codigo</th>
								<th>Producto</th>
								<th>Descripcion</th>
								<th>Precio</th>
								<th>Cantidad</th>
								<th>Opcion</th>
							</tr>
						</thead>
						<tbody class="productosCuerpo">
							<?=$product->get_productsC();?>
						</tbody>
					</table>
					
					<table class="tablaProducto" border="1px" cellpadding="5px">
						<thead class="cabezaCuerpo">
							<tr>
								<th class="titulo" colspan="6">Categoria: Confiteria</th>
							</tr>
							<tr class="estructura">
								<th>Codigo</th>
								<th>Producto</th>
								<th>Descripcion</th>
								<th>Precio</th>
								<th>Cantidad</th>
								<th>Opcion</th>
							</tr>
						</thead>
						<tbody class="productosCuerpo">
							<?=$product->get_productsCO();?>
						</tbody>
					</table>
					
					<table class="tablaProducto" border="1px" cellpadding="5px">
						<thead class="cabezaCuerpo">
							<tr>
								<th class="titulo" colspan="6">Categoria: Bebidas</th>
							</tr>
							<tr class="estructura">
								<th>Codigo</th>
								<th>Producto</th>
								<th>Descripcion</th>
								<th>Precio</th>
								<th>Cantidad</th>
								<th>Opcion</th>
							</tr>
						</thead>
						<tbody class="productosCuerpo">
							<?=$product->get_productsB();?>
						</tbody>
					</table>
					
					<table class="tablaProducto" border="1px" cellpadding="5px">
						<thead class="cabezaCuerpo">
							<tr>
								<th class="titulo" colspan="6">Categoria: Panaderia</th>
							</tr>
							<tr class="estructura">
								<th>Codigo</th>
								<th>Producto</th>
								<th>Descripcion</th>
								<th>Precio</th>
								<th>Cantidad</th>
								<th>Opcion</th>
							</tr>
						</thead>
						<tbody class="productosCuerpo">
							<?=$product->get_productsP();?>
						</tbody>
					</table>
				</div>
				<div class="contenido-carro">
					<table class="tablaCarro" border="1px" cellpadding="5px">
						<thead class="cabezaCarro">
							<tr>
								<th class="titulo" colspan="6">Mi Carrito de Compras</th>
							</tr>
							<tr class="estructura">
								<th>Codigo</th>
								<th>Producto</th>
								<th>Precio</th>
								<th>Cantidad</th>
								<th>Subtotal</th>
								<th>Opcion</th>
							</tr>
						</thead>
						<tbody class="CarroCuerpo">
							<?=$cart->get_items();?>
							<tr class="estructura">
								<th colspan="3">Total pagar: <?=$cart->get_total_payment();?> Bs</th>
								<th colspan="3">Total items: <?=$cart->get_total_items();?></th>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
	    </div>
    </body>
</html>