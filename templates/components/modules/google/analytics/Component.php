<?php
namespace components\modules\google\analytics;

class Component extends \Hoborg\Bundle\DisplayServiceBundle\Component\Component {

	public function afterLoad() {
		var_dump('I\'m here :)');
	}
}