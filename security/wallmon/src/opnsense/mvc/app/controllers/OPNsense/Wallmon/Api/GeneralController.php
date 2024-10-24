<?php

namespace OPNsense\Wallmon\Api

use OPNsense\Base\ApiControllerBase;
use OPNsense\Wallmon\General;
use OPNsense\Core\Config;


class GeneralController extends ApiControllerBase
{
	public function getAction()
	{
		$result = array();

		if ($this->request->isGet())
		{
			$mdlGeneral = new General();
			$result['general'] = $mdlGeneral->getNodes();
		}
		
		return $result;
	}

	public function setAction()
	{
		$result = array();

		// TODO: Implement

		return $result;
	}
}
