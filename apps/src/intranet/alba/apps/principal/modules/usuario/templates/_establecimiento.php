<?php echo link_to($usuario->getEstablecimiento()->getNombre(),'establecimiento/edit?id='.$usuario->getFkEstablecimientoId());?>