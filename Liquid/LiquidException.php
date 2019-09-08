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

use Throwable;

/**
 * LiquidException class.
 */
class LiquidException extends \Exception
{

    public function __construct($message = "", $code = 0, Throwable $previous = null)
    {
        if ($code == 7) {
            Liquid::$config['error'][] = $message;
            return true;
        }
        parent::__construct($message, $code, $previous);
    }

}
