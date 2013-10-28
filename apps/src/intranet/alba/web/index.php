<?php

require_once('/usr/share/alba/config/ProjectConfiguration.class.php');
$configuration = ProjectConfiguration::getApplicationConfiguration('principal', 'prod', false);
sfContext::createInstance($configuration)->dispatch();

