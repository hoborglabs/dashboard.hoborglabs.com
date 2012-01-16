<?php

class ComponentProvider extends \Hoborg\Bundle\DisplayServiceBundle\Component\Provider {

	protected $isMobile = false;

	public function beforeLoad($id) {
		$detect = new \Hoborg\Component\Utility\MobileDetect();
		$this->isMobile = $detect->isMobile();
	}

	public function getById($id) {
		$cmp = parent::getById($id);
		if ($this->isMobile) {
			$cmp->setTemplate('mobile');
		}

		return $cmp;
	}
}