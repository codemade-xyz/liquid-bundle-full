<?php

/**
 * This file is part of the Liquid package.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 * @package Liquid
 */

namespace CodeMade\LiquidBundle\Liquid\Tag;

use CodeMade\LiquidBundle\Liquid\AbstractTag;
use CodeMade\LiquidBundle\Liquid\Liquid;
use CodeMade\LiquidBundle\Liquid\Context;
use CodeMade\LiquidBundle\Liquid\LiquidException;
use CodeMade\LiquidBundle\Liquid\FileSystem;
use CodeMade\LiquidBundle\Liquid\Regexp;

/**
 * Used to decrement a counter into a template
 *
 * Example:
 *
 *     {% decrement value %}
 *
 * @author Viorel Dram
 */
class TagDecrement extends AbstractTag
{
	/**
	 * Name of the variable to decrement
	 *
	 * @var int
	 */
	private $toDecrement;

	/**
	 * Constructor
	 *
	 * @param string $markup
	 * @param array $tokens
	 * @param FileSystem $fileSystem
	 *
	 * @throws \Liquid\LiquidException
	 */
	public function __construct($markup, array &$tokens, FileSystem $fileSystem = null) {
		$syntax = new Regexp('/(' . Liquid::get('VARIABLE_NAME') . ')/');

		if ($syntax->match($markup)) {
			$this->toDecrement = $syntax->matches[0];
		} else {
			throw new LiquidException("Syntax Error in 'decrement' - Valid syntax: decrement [var]");
		}
	}

	/**
	 * Renders the tag
	 *
	 * @param Context $context
	 *
	 * @return string|void
	 */
	public function render(Context $context) {
		// if the value is not set in the environment check to see if it
		// exists in the context, and if not set it to 0
		if (!isset($context->environments[0][$this->toDecrement])) {
			// check for a context value
			$fromContext = $context->get($this->toDecrement);

			// we already have a value in the context
			$context->environments[0][$this->toDecrement] = (null !== $fromContext) ? $fromContext : 0;
		}

		// decrement the environment value
		$context->environments[0][$this->toDecrement]--;
	}
}
