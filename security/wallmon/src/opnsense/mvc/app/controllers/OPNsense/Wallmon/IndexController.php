<?php

namespace OPNsense\Wallmon;

class IndexController extends \OPNsense\Base\IndexController
{
	public function indexAction()
	{
		$this->view->pick('OPNsense/Wallmon/index');
		$this->view->generalForm = $this->getForm("general");
	}
}
