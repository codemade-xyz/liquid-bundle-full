<?php


namespace CodeMade\LiquidBundle\Liquid;


class Locale
{
    protected $path;
    public function __construct($path)
    {
        $this->path = $path;
        return $this;
    }

    /**
     * @return array
     */
    public function getLocales()
    {
        $locales = [];

        $file_locale = $this->path.'/locales/'.Liquid::getLocale().'.json';
        $file_locale = preg_replace('|([/]+)|s', '/', $file_locale);

        if (is_file($file_locale)) {
            $locales = @json_decode(@file_get_contents($file_locale), true);
        }


        if (Liquid::getTemplate() == 'Admin') {
            $dir_module = dirname(Liquid::getView() . '.' . Liquid::get('INCLUDE_SUFFIX'));


            if (!empty($dir_module) && $dir_module != '') {
                $path_controller = ucfirst(mb_strtolower($dir_module));
                $file_locale = $this->path . '/locales/' . $dir_module . '/' . Liquid::getLocale() . '.json';
                $file_locale = preg_replace('|([/]+)|s', '/', $file_locale);

                if (is_file($file_locale)) {
                    $locales_module = @json_decode(@file_get_contents($file_locale), true);
                    if (is_array($locales_module)) {
                        $locales = array_merge($locales, $locales_module);
                    }
                }
            }
        }

        if (class_exists('\Symfony\Component\PropertyAccess\PropertyAccess')) {
            Liquid::$propertyAccessor = \Symfony\Component\PropertyAccess\PropertyAccess::createPropertyAccessor();
        }


        return $locales;
    }
}