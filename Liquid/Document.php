<?php

/**
 * This file is part of the Liquid package.
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 *
 * @package Liquid
 */

namespace CodeMade\LiquidBundle\Liquid;

use CodeMade\LiquidBundle\Liquid\Tag\TagInclude;
use CodeMade\LiquidBundle\Liquid\Tag\TagExtends;
use CodeMade\LiquidBundle\Liquid\Tag\TagSection;

/**
 * This class represents the entire template document.
 */
class Document extends AbstractBlock
{
    /**
     * Constructor.
     *
     * @param array $tokens
     * @param FileSystem $fileSystem
     * @throws LiquidException
     */
	public function __construct(array &$tokens, FileSystem $fileSystem = null) {
		$this->fileSystem = $fileSystem;
		$this->parse($tokens);
	}

	/**
	 * Check for cached includes
	 *
	 * @return string
	 */
	public function checkIncludes() {
		foreach ($this->nodelist as $token) {
			if (is_object($token)) {
				if ($token instanceof TagInclude || $token instanceof TagSection || $token instanceof TagExtends) {
					/** @var TagInclude|TagExtends $token */
					if ($token->checkIncludes() == true) {
						return true;
					}
				}
			}
		}

		return false;
	}

	/**
	 * There isn't a real delimiter
	 *
	 * @return string
	 */
	protected function blockDelimiter() {
		return '';
	}

	/**
	 * Document blocks don't need to be terminated since they are not actually opened
	 */
	protected function assertMissingDelimitation() {
	}
}
