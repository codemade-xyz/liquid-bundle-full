<!-- START of Symfony Web Debug Toolbar -->
<div id="sfMiniToolbar-{{ panel }}" class="sf-minitoolbar" data-no-turbolink="" style="display: none;">
    <a href="#" title="Show Symfony toolbar" tabindex="-1" id="sfToolbarMiniToggler-{{ panel }}" accesskey="D">
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="#AAA" d="M12 .9C5.8.9.9 5.8.9 12a11 11 0 1 0 22.2 0A11 11 0 0 0 12 .9zm6.5 6c-.6 0-.9-.3-.9-.8 0-.2 0-.4.2-.6l.2-.4c0-.3-.5-.4-.6-.4-1.8.1-2.3 2.5-2.7 4.4l-.2 1c1 .2 1.8 0 2.2-.3.6-.4-.2-.7-.1-1.2.1-.3.5-.5.7-.6.5 0 .7.5.7.9 0 .7-1 1.8-3 1.8l-.6-.1-.6 2.4c-.4 1.6-.8 3.8-2.4 5.7-1.4 1.7-2.9 1.9-3.5 1.9-1.2 0-1.9-.6-2-1.5 0-.8.7-1.3 1.2-1.3.6 0 1.1.5 1.1 1s-.2.6-.4.6c-.1.1-.3.2-.3.4 0 .1.1.3.4.3.5 0 .8-.3 1.1-.5 1.2-.9 1.6-2.7 2.2-5.7l.1-.7.7-3.2c-.8-.6-1.3-1.4-2.4-1.7-.6-.1-1.1.1-1.5.5-.4.5-.2 1.1.2 1.5l.7.6c.7.8 1.2 1.6 1 2.5-.3 1.5-2 2.6-4 1.9-1.8-.6-2-1.8-1.8-2.5.2-.6.6-.7 1.1-.6.5.2.6.7.6 1.2l-.1.3c-.2.1-.3.3-.3.4-.1.4.4.6.7.7.7.3 1.6-.2 1.8-.8a1 1 0 0 0-.4-1.1l-.7-.8c-.4-.4-1.1-1.4-.7-2.6.1-.5.4-.9.7-1.3a4 4 0 0 1 2.8-.6c1.2.4 1.8 1.1 2.6 1.8.5-1.2 1-2.4 1.8-3.5.9-.9 1.9-1.6 3.1-1.7 1.3.2 2.2.7 2.2 1.6 0 .4-.2 1.1-.9 1.1z"></path></svg>

    </a>
</div>
<div id="sfToolbarClearer-{{ panel }}" class="sf-toolbar-clearer" style="display: block;"></div>
<div id="sfToolbarMainContent-{{ panel }}" class="sf-toolbarreset clear-fix" data-no-turbolink="" style="display: block;">






    <div class="sf-toolbar-block sf-toolbar-block-request sf-toolbar-status-normal ">
        <a>
            <div class="sf-toolbar-icon">
                <span class="sf-toolbar-status {{ router.class }}">{{ router.status }}</span>
                <span class="sf-toolbar-label"> @{{ router._route }} </span>
                <span class="sf-toolbar-value sf-toolbar-info-piece-additional"></span>
            </div>
        </a>
        <div class="sf-toolbar-info" style="left: 0px;"><!-- display: none!important;-->
            <div class="sf-toolbar-info-group">
                <div class="sf-toolbar-info-piece">
                    <b>HTTP status</b>
                    <span>{{ router.status }} {{ router.status_message }}</span>
                </div>


                <div class="sf-toolbar-info-piece">
                    <b>Controller</b>
                    <span>
                        {{ router.name }}
                    </span>
                </div>

                <div class="sf-toolbar-info-piece">
                    <b>Locale</b>
                    <span>
                            {{ router._locale }}
                        </span>
                </div>

                <div class="sf-toolbar-info-piece">
                    <b>Route name</b>
                    <span>{{ router._route }}</span>
                </div>


            </div>


        </div>
    </div>





    <div class="sf-toolbar-block sf-toolbar-block-time sf-toolbar-status-normal ">
        <a>
            <div class="sf-toolbar-icon">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="#AAA" d="M15.1 4.3a13 13 0 0 0-6.2 0c-.3 0-.7-.2-.7-.5v-.4c0-1.2 1-2.3 2.3-2.3h3c1.2 0 2.3 1 2.3 2.3v.3c0 .4-.4.6-.7.6zm5.8 9.7a9 9 0 0 1-17.8 0 9 9 0 0 1 17.8 0zm-4.2 1c0-.6-.4-1-1-1H13V8.4c0-.6-.4-1-1-1s-1 .4-1 1v6.2c0 .6.4 1.3 1 1.3h3.7c.5.1 1-.3 1-.9z"></path></svg>
                <span class="sf-toolbar-value">{{ time.all }}</span>
                <span class="sf-toolbar-label">ms</span>
            </div>
        </a>

        <div class="sf-toolbar-info" style="left: 0px;">        <div class="sf-toolbar-info-piece">
                <b>Total time</b>
                <span>{{ time.all }} ms</span>
            </div>
            <div class="sf-toolbar-info-piece">
                <b>Initialization time</b>
                <span>{{ time.initialization }} ms</span>
            </div>
        </div>
    </div>




    <div class="sf-toolbar-block sf-toolbar-block-time sf-toolbar-status-normal ">
        <a href="http://127.0.0.1:8001/_profiler/{{ panel }}?panel=time">
            <div class="sf-toolbar-icon">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="#AAA" d="M6 18.9V15h12v3.9c0 .7-.2 1.1-1 1.1H7c-.8 0-1-.4-1-1.1zM20 1c-.6 0-1 .5-1 1.1v18c0 .5-.4.9-.9.9H5.9a.9.9 0 0 1-.9-.9v-18C5 1.5 4.6 1 4 1c-.5 0-1 .5-1 1.1v18C3 21.7 4.3 23 5.9 23h12.2c1.6 0 2.9-1.3 2.9-2.9v-18c0-.6-.4-1.1-1-1.1zm-2 8H6v5h12V9z"></path></svg>
                <span class="sf-toolbar-value">{{ php.memory_usage }}</span>
                <span class="sf-toolbar-label">MB</span>
            </div>
        </a>
        <div class="sf-toolbar-info" style="left: 0px;">        <div class="sf-toolbar-info-piece">
                <b>Peak memory usage</b>
                <span>{{ php.memory_usage_peak }} MB</span>
            </div>

            <div class="sf-toolbar-info-piece">
                <b>PHP memory limit</b>
                <span>{{ php.memory_limit }} MB</span>
            </div>
        </div>
    </div>




    <div class="sf-toolbar-block sf-toolbar-block-ajax sf-toolbar-status-normal" style="display: none;">
        <div class="sf-toolbar-icon">        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="#AAA" d="M9.8 18L6 22.4c-.3.3-.8.4-1.1 0L1 18c-.4-.5-.1-1 .5-1H3V6.4C3 3.8 5.5 2 8.2 2h3.9c1.1 0 2 .9 2 2s-.9 2-2 2H8.2C7.7 6 7 6 7 6.4V17h2.2c.6 0 1 .5.6 1zM23 6l-3.8-4.5a.8.8 0 0 0-1.1 0L14.2 6c-.4.5-.1 1 .5 1H17v10.6c0 .4-.7.4-1.2.4h-3.9c-1.1 0-2 .9-2 2s.9 2 2 2h3.9c2.6 0 5.2-1.8 5.2-4.4V7h1.5c.6 0 .9-.5.5-1z"></path></svg>

            <span class="sf-toolbar-value sf-toolbar-ajax-request-counter">0</span>
        </div>
        <div class="sf-toolbar-info">        <div class="sf-toolbar-info-piece">
                <b class="sf-toolbar-ajax-info">0 AJAX requests</b>
            </div>
            <div class="sf-toolbar-info-piece">
                <table class="sf-toolbar-ajax-requests">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Profile</th>
                        <th>Method</th>
                        <th>Type</th>
                        <th>Status</th>
                        <th>URL</th>
                        <th>Time</th>
                    </tr>
                    </thead>
                    <tbody class="sf-toolbar-ajax-request-list"></tbody>
                </table>
            </div>
        </div>
    </div>






    <div class="sf-toolbar-block sf-toolbar-block-twig sf-toolbar-status-normal ">
        <a href="http://127.0.0.1:8001/_profiler/{{ panel }}?panel=twig">        <div class="sf-toolbar-icon">        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="#AAA" d="M8.932 22.492c.016-6.448-.971-11.295-5.995-11.619 4.69-.352 7.113 2.633 9.298 6.907C12.205 6.354 9.882 1.553 4.8 1.297c7.433.07 10.028 5.9 11.508 14.293 1.171-2.282 3.56-5.553 5.347-1.361-1.594-2.04-3.607-1.617-3.978 8.262H8.933z"></path></svg>

                <span class="sf-toolbar-value">{{ time.liquid }}</span>
                <span class="sf-toolbar-label">ms</span>
            </div>
        </a>        <div class="sf-toolbar-info" style="left: 0px;">        <div class="sf-toolbar-info-piece">
                <b>Render Time</b>
                <span>{{ time.liquid }} ms</span>
            </div>
            <div class="sf-toolbar-info-piece">
                <b>Template Calls</b>
                <span class="sf-toolbar-status">0</span>
            </div>
            <div class="sf-toolbar-info-piece">
                <b>Block Calls</b>
                <span class="sf-toolbar-status">0</span>
            </div>
            <div class="sf-toolbar-info-piece">
                <b>Macro Calls</b>
                <span class="sf-toolbar-status">0</span>
            </div>
        </div>
    </div>



    <div class="sf-toolbar-block sf-toolbar-block-db sf-toolbar-status-normal {{ database.class }}">
        <a>
            <div class="sf-toolbar-icon">

                <svg version="1.1" xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="24" height="24" viewBox="0 0 24 24" enable-background="new 0 0 24 24" xml:space="preserve">
                    <path fill="#AAAAAA" d="M5,8h14c1.7,0,3-1.3,3-3s-1.3-3-3-3H5C3.3,2,2,3.3,2,5S3.3,8,5,8z M18,3.6c0.8,0,1.5,0.7,1.5,1.5S18.8,6.6,18,6.6s-1.5-0.7-1.5-1.5S17.2,3.6,18,3.6z M19,9H5c-1.7,0-3,1.3-3,3s1.3,3,3,3h14c1.7,0,3-1.3,3-3S20.7,9,19,9z M18,13.6
                    c-0.8,0-1.5-0.7-1.5-1.5s0.7-1.5,1.5-1.5s1.5,0.7,1.5,1.5S18.8,13.6,18,13.6z M19,16H5c-1.7,0-3,1.3-3,3s1.3,3,3,3h14c1.7,0,3-1.3,3-3S20.7,16,19,16z M18,20.6c-0.8,0-1.5-0.7-1.5-1.5s0.7-1.5,1.5-1.5s1.5,0.7,1.5,1.5S18.8,20.6,18,20.6z"></path>
                </svg>


                <span class="sf-toolbar-value">{{ database.log | size }}</span>
                <span class="sf-toolbar-info-piece-additional-detail">
                        <span class="sf-toolbar-label">in</span>
                        <span class="sf-toolbar-value">{{ database.time }}</span>
                        <span class="sf-toolbar-label">ms</span>
                    </span>

            </div>
        </a>

        <div class="sf-toolbar-info" style="left: 0px;">            <div class="sf-toolbar-info-piece">
                <b>Database Queries</b>
                <span class="sf-toolbar-status ">{{ database.log | size }}</span>
            </div>
            <div class="sf-toolbar-info-piece">
                <b>Query time</b>
                <span>{{ database.time }} ms</span>
            </div>
            <div class="sf-toolbar-info-piece">
                <b>Invalid entities</b>
                <span class="sf-toolbar-status ">{{ database.error | size }}</span>
            </div>
            {% if database.error %}
            <div class="sf-toolbar-info-piece">
                <b>Error</b>
                {% for item in database.error %}
                    <span style="display: inline-block">{{ item }}</span><br>
                {% endfor %}
            </div>
            {% endif %}
        </div>
    </div>


    <div class="sf-toolbar-block sf-toolbar-block-config sf-toolbar-status-normal sf-toolbar-block-right" title="">
        <a>        <div class="sf-toolbar-icon">        <span class="sf-toolbar-label">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="#AAA" d="M12 .9C5.8.9.9 5.8.9 12a11 11 0 1 0 22.2 0A11 11 0 0 0 12 .9zm6.5 6c-.6 0-.9-.3-.9-.8 0-.2 0-.4.2-.6l.2-.4c0-.3-.5-.4-.6-.4-1.8.1-2.3 2.5-2.7 4.4l-.2 1c1 .2 1.8 0 2.2-.3.6-.4-.2-.7-.1-1.2.1-.3.5-.5.7-.6.5 0 .7.5.7.9 0 .7-1 1.8-3 1.8l-.6-.1-.6 2.4c-.4 1.6-.8 3.8-2.4 5.7-1.4 1.7-2.9 1.9-3.5 1.9-1.2 0-1.9-.6-2-1.5 0-.8.7-1.3 1.2-1.3.6 0 1.1.5 1.1 1s-.2.6-.4.6c-.1.1-.3.2-.3.4 0 .1.1.3.4.3.5 0 .8-.3 1.1-.5 1.2-.9 1.6-2.7 2.2-5.7l.1-.7.7-3.2c-.8-.6-1.3-1.4-2.4-1.7-.6-.1-1.1.1-1.5.5-.4.5-.2 1.1.2 1.5l.7.6c.7.8 1.2 1.6 1 2.5-.3 1.5-2 2.6-4 1.9-1.8-.6-2-1.8-1.8-2.5.2-.6.6-.7 1.1-.6.5.2.6.7.6 1.2l-.1.3c-.2.1-.3.3-.3.4-.1.4.4.6.7.7.7.3 1.6-.2 1.8-.8a1 1 0 0 0-.4-1.1l-.7-.8c-.4-.4-1.1-1.4-.7-2.6.1-.5.4-.9.7-1.3a4 4 0 0 1 2.8-.6c1.2.4 1.8 1.1 2.6 1.8.5-1.2 1-2.4 1.8-3.5.9-.9 1.9-1.6 3.1-1.7 1.3.2 2.2.7 2.2 1.6 0 .4-.2 1.1-.9 1.1z"></path></svg>

        </span>
                <span class="sf-toolbar-value">{{ symfony.v }}</span>
            </div>
        </a>        <div class="sf-toolbar-info" style="right: 0px;">        <div class="sf-toolbar-info-group">


                <div class="sf-toolbar-info-piece">
                    <b>Environment</b>
                    <span>{{ symfony.environment }}</span>
                </div>

                <div class="sf-toolbar-info-piece">
                    <b>Debug</b>
                    <span class="sf-toolbar-status sf-toolbar-status-green">enabled</span>
                </div>
            </div>

            <div class="sf-toolbar-info-group">
                <div class="sf-toolbar-info-piece sf-toolbar-info-php">
                    <b>PHP version</b>
                    <span>
                    {{ php.v }}
                </span>
                </div>


            </div>

            <div class="sf-toolbar-info-group">
                <div class="sf-toolbar-info-piece">
                    <b>Resources</b>
                    <span>
                        <a href="https://symfony.com/doc/{{ symfony.v }}/index.html" rel="help">
                            Read Symfony {{ symfony.v }} Docs
                        </a>
                    </span>
                </div>
                <div class="sf-toolbar-info-piece">
                    <b>Help</b>
                    <span>
                        <a href="https://symfony.com/support">
                            Symfony Support Channels
                        </a>
                    </span>
                </div>
            </div>
        </div>
    </div>



    <a class="hide-button" id="sfToolbarHideButton-{{ panel }}" title="Close Toolbar" tabindex="-1" accesskey="D">
        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path fill="#AAA" d="M21.1 18.3c.8.8.8 2 0 2.8-.4.4-.9.6-1.4.6s-1-.2-1.4-.6L12 14.8l-6.3 6.3c-.4.4-.9.6-1.4.6s-1-.2-1.4-.6a2 2 0 0 1 0-2.8L9.2 12 2.9 5.7a2 2 0 0 1 0-2.8 2 2 0 0 1 2.8 0L12 9.2l6.3-6.3a2 2 0 0 1 2.8 0c.8.8.8 2 0 2.8L14.8 12l6.3 6.3z"></path></svg>

    </a>
</div>



<style nonce="a6841504ef1a018b8473e9fdcc3f859f">    .sf-minitoolbar {    background-color: #222;    border-top-left-radius: 4px;    bottom: 0;    box-sizing: border-box;    display: none;    height: 36px;    padding: 6px;    position: fixed;    right: 0;    z-index: 99999;}.sf-minitoolbar a {    display: block;}.sf-minitoolbar svg,.sf-minitoolbar img {    max-height: 24px;    max-width: 24px;    display: inline;}.sf-toolbar-clearer {    clear: both;    height: 36px;}.sf-display-none {    display: none;}.sf-toolbarreset * {    box-sizing: content-box;    vertical-align: baseline;    letter-spacing: normal;    width: auto;}.sf-toolbarreset {    background-color: #222;    bottom: 0;    box-shadow: 0 -1px 0 rgba(0, 0, 0, 0.2);    color: #EEE;    font: 11px Arial, sans-serif;    left: 0;    margin: 0;    padding: 0 36px 0 0;    position: fixed;    right: 0;    text-align: left;    text-transform: none;    z-index: 99999;    direction: ltr;    /* neutralize the aliasing defined by external CSS styles */    -webkit-font-smoothing: subpixel-antialiased;    -moz-osx-font-smoothing: auto;}.sf-toolbarreset abbr {    border: dashed #777;    border-width: 0 0 1px;}.sf-toolbarreset svg,.sf-toolbarreset img {    height: 20px;    width: 20px;    display: inline-block;}.sf-toolbarreset .hide-button {    background: #444;    display: block;    position: absolute;    top: 0;    right: 0;    width: 36px;    height: 36px;    cursor: pointer;    text-align: center;}.sf-toolbarreset .hide-button svg {    max-height: 18px;    margin-top: 10px;}.sf-toolbar-block {    cursor: default;    display: block;    float: left;    height: 36px;    margin-right: 0;    white-space: nowrap;    max-width: 15%;}.sf-toolbar-block > a,.sf-toolbar-block > a:hover {    display: block;    text-decoration: none;    color: inherit;}.sf-toolbar-block span {    display: inline-block;}.sf-toolbar-block .sf-toolbar-value {    color: #F5F5F5;    font-size: 13px;    line-height: 36px;    padding: 0;}.sf-toolbar-block .sf-toolbar-label,.sf-toolbar-block .sf-toolbar-class-separator {    color: #AAA;    font-size: 12px;}.sf-toolbar-block .sf-toolbar-info {    border-collapse: collapse;    display: table;    z-index: 100000;}.sf-toolbar-block hr {    border-top: 1px solid #777;    margin: 4px 0;    padding-top: 4px;}.sf-toolbar-block .sf-toolbar-info-piece {    /* this 'border-bottom' trick is needed because 'margin-bottom' doesn't work for table rows */    border-bottom: solid transparent 3px;    display: table-row;}.sf-toolbar-block .sf-toolbar-info-piece-additional,.sf-toolbar-block .sf-toolbar-info-piece-additional-detail {    display: none;}.sf-toolbar-block .sf-toolbar-info-group {    margin-bottom: 4px;    padding-bottom: 2px;    border-bottom: 1px solid #333333;}.sf-toolbar-block .sf-toolbar-info-group:last-child {    margin-bottom: 0;    padding-bottom: 0;    border-bottom: none;}.sf-toolbar-block .sf-toolbar-info-piece .sf-toolbar-status {    padding: 2px 5px;    margin-bottom: 0;}.sf-toolbar-block .sf-toolbar-info-piece .sf-toolbar-status + .sf-toolbar-status {    margin-left: 4px;}.sf-toolbar-block .sf-toolbar-info-piece:last-child {    margin-bottom: 0;}div.sf-toolbar .sf-toolbar-block .sf-toolbar-info-piece a {    color: #99CDD8;    text-decoration: underline;}div.sf-toolbar .sf-toolbar-block a:hover {    text-decoration: none;}.sf-toolbar-block .sf-toolbar-info-piece b {    color: #AAA;    display: table-cell;    font-size: 11px;    padding: 4px 8px 4px 0;}.sf-toolbar-block:not(.sf-toolbar-block-dump) .sf-toolbar-info-piece span {    color: #F5F5F5;}.sf-toolbar-block .sf-toolbar-info-piece span {    font-size: 12px;}.sf-toolbar-block .sf-toolbar-info {    background-color: #444;    bottom: 36px;    color: #F5F5F5;    display: none;    padding: 9px 0;    position: absolute;}.sf-toolbar-block .sf-toolbar-info:empty {    visibility: hidden;}.sf-toolbar-block .sf-toolbar-status {    display: inline-block;    color: #FFF;    background-color: #666;    padding: 3px 6px;    margin-bottom: 2px;    vertical-align: middle;    min-width: 15px;    min-height: 13px;    text-align: center;}.sf-toolbar-block .sf-toolbar-status-green {    background-color: #4F805D;}.sf-toolbar-block .sf-toolbar-status-red {    background-color: #B0413E;}.sf-toolbar-block .sf-toolbar-status-yellow {    background-color: #A46A1F;}.sf-toolbar-block.sf-toolbar-status-green {    background-color: #4F805D;    color: #FFF;}.sf-toolbar-block.sf-toolbar-status-red {    background-color: #B0413E;    color: #FFF;}.sf-toolbar-block.sf-toolbar-status-yellow {    background-color: #A46A1F;    color: #FFF;}.sf-toolbar-block-request .sf-toolbar-status {    color: #FFF;    display: inline-block;    font-size: 14px;    height: 36px;    line-height: 36px;    padding: 0 10px;}.sf-toolbar-block-request .sf-toolbar-info-piece a {    text-decoration: none;}.sf-toolbar-block-request .sf-toolbar-info-piece a:hover {    text-decoration: underline;}.sf-toolbar-block-request .sf-toolbar-redirection-status {    font-weight: normal;    padding: 2px 4px;    line-height: 18px;}.sf-toolbar-block-request .sf-toolbar-info-piece span.sf-toolbar-redirection-method {    font-size: 12px;    height: 17px;    line-height: 17px;    margin-right: 5px;}.sf-toolbar-block-ajax .sf-toolbar-icon {    cursor: pointer;}.sf-toolbar-status-green .sf-toolbar-label,.sf-toolbar-status-yellow .sf-toolbar-label,.sf-toolbar-status-red .sf-toolbar-label {    color: #FFF;}.sf-toolbar-status-green svg path,.sf-toolbar-status-green svg .sf-svg-path,.sf-toolbar-status-red svg path,.sf-toolbar-status-red svg .sf-svg-path,.sf-toolbar-status-yellow svg path,.sf-toolbar-status-yellow svg .sf-svg-path {    fill: #FFF;}.sf-toolbar-block-config svg path,.sf-toolbar-block-config svg .sf-svg-path {    fill: #FFF;}.sf-toolbar-block .sf-toolbar-icon {    display: block;    height: 36px;    padding: 0 7px;    overflow: hidden;    text-overflow: ellipsis;}.sf-toolbar-block-request .sf-toolbar-icon {    padding-left: 0;    padding-right: 0;}.sf-toolbar-block .sf-toolbar-icon img,.sf-toolbar-block .sf-toolbar-icon svg {    border-width: 0;    position: relative;    top: 8px;    vertical-align: baseline;}.sf-toolbar-block .sf-toolbar-icon img + span,.sf-toolbar-block .sf-toolbar-icon svg + span {    margin-left: 4px;}.sf-toolbar-block-config .sf-toolbar-icon .sf-toolbar-value {    margin-left: 4px;}.sf-toolbar-block:hover,.sf-toolbar-block.hover {    position: relative;}.sf-toolbar-block:hover .sf-toolbar-icon,.sf-toolbar-block.hover .sf-toolbar-icon {    background-color: #444;    position: relative;    z-index: 10002;}.sf-toolbar-block-ajax.hover .sf-toolbar-info {    z-index: 10001;}.sf-toolbar-block:hover .sf-toolbar-info,.sf-toolbar-block.hover .sf-toolbar-info {    display: block;    padding: 10px;    max-width: 480px;    max-height: 480px;    word-wrap: break-word;    overflow: hidden;    overflow-y: auto;}.sf-toolbar-info-piece b.sf-toolbar-ajax-info {    color: #F5F5F5;}.sf-toolbar-ajax-requests {    table-layout: auto;    width: 100%;}.sf-toolbar-ajax-requests td {    background-color: #444;    border-bottom: 1px solid #777;    color: #F5F5F5;    font-size: 12px;    padding: 4px;}.sf-toolbar-ajax-requests tr:last-child td {    border-bottom: 0;}.sf-toolbar-ajax-requests th {    background-color: #222;    border-bottom: 0;    color: #AAA;    font-size: 11px;    padding: 4px;}.sf-ajax-request-url {    max-width: 250px;    line-height: 9px;    overflow: hidden;    text-overflow: ellipsis;}.sf-toolbar-ajax-requests .sf-ajax-request-url a {    text-decoration: none;}.sf-toolbar-ajax-requests .sf-ajax-request-url a:hover {    text-decoration: underline;}.sf-ajax-request-duration {    text-align: right;}.sf-ajax-request-loading {    animation: sf-blink .5s ease-in-out infinite;}@keyframes sf-blink {    0% { background: #222; }    50% { background: #444; }    100% { background: #222; }}.sf-toolbar-block.sf-toolbar-block-dump .sf-toolbar-info {    max-width: none;    width: 100%;    position: fixed;    box-sizing: border-box;    left: 0;}.sf-toolbar-block-dump pre.sf-dump {    background-color: #222;    border-color: #777;    border-radius: 0;    margin: 6px 0 12px 0;}.sf-toolbar-block-dump pre.sf-dump:last-child {    margin-bottom: 0;}.sf-toolbar-block-dump pre.sf-dump .sf-dump-search-wrapper {    margin-bottom: 5px;}.sf-toolbar-block-dump pre.sf-dump span.sf-dump-search-count {    color: #333;    font-size: 12px;}.sf-toolbar-block-dump .sf-toolbar-info-piece {    display: block;}.sf-toolbar-block-dump .sf-toolbar-info-piece .sf-toolbar-file-line {    color: #AAA;    margin-left: 4px;}.sf-toolbar-block-dump .sf-toolbar-info img {    display: none;}/* Responsive Design */.sf-toolbar-icon .sf-toolbar-label,.sf-toolbar-icon .sf-toolbar-value {    display: none;}.sf-toolbar-block-config .sf-toolbar-icon .sf-toolbar-label {    display: inline-block;}/* Legacy Design - these styles are maintained to make old panels look   a bit better on the new toolbar */.sf-toolbar-block .sf-toolbar-info-piece-additional-detail {    color: #AAA;    font-size: 12px;}.sf-toolbar-status-green .sf-toolbar-info-piece-additional-detail,.sf-toolbar-status-yellow .sf-toolbar-info-piece-additional-detail,.sf-toolbar-status-red .sf-toolbar-info-piece-additional-detail {    color: #FFF;}@media (min-width: 768px) {    .sf-toolbar-icon .sf-toolbar-label,    .sf-toolbar-icon .sf-toolbar-value {        display: inline;    }    .sf-toolbar-block .sf-toolbar-icon img,    .sf-toolbar-block .sf-toolbar-icon svg {        top: 6px;    }    .sf-toolbar-block-time .sf-toolbar-icon svg,    .sf-toolbar-block-memory .sf-toolbar-icon svg {        display: none;    }    .sf-toolbar-block-time .sf-toolbar-icon svg + span,    .sf-toolbar-block-memory .sf-toolbar-icon svg + span {        margin-left: 0;    }    .sf-toolbar-block .sf-toolbar-icon {        padding: 0 10px;    }    .sf-toolbar-block-time .sf-toolbar-icon {        padding-right: 5px;    }    .sf-toolbar-block-memory .sf-toolbar-icon {        padding-left: 5px;    }    .sf-toolbar-block-request .sf-toolbar-icon {        padding-left: 0;        padding-right: 0;    }    .sf-toolbar-block-request .sf-toolbar-label {        margin-left: 5px;    }    .sf-toolbar-block-request .sf-toolbar-status + svg {        margin-left: 5px;    }    .sf-toolbar-block-request .sf-toolbar-icon svg + .sf-toolbar-label {        margin-left: 0;     }    .sf-toolbar-block-request .sf-toolbar-label + .sf-toolbar-value {        margin-right: 10px;    }    .sf-toolbar-block-request:hover .sf-toolbar-info {        max-width: none;    }    .sf-toolbar-block .sf-toolbar-info-piece b {        font-size: 12px;    }    .sf-toolbar-block .sf-toolbar-info-piece span {        font-size: 13px;    }    .sf-toolbar-block-right {        float: right;        margin-left: 0;        margin-right: 0;    }}@media (min-width: 1024px) {    .sf-toolbar-block .sf-toolbar-info-piece-additional,    .sf-toolbar-block .sf-toolbar-info-piece-additional-detail {        display: inline;    }    .sf-toolbar-block .sf-toolbar-info-piece-additional:empty,    .sf-toolbar-block .sf-toolbar-info-piece-additional-detail:empty {        display: none;    }}/***** Error Toolbar *****/.sf-error-toolbar .sf-toolbarreset {    background: #222;    color: #f5f5f5;    font: 13px/36px Arial, sans-serif;    height: 36px;    padding: 0 15px;    text-align: left;}.sf-error-toolbar .sf-toolbarreset svg {    height: auto;}.sf-error-toolbar .sf-toolbarreset a {    color: #99cdd8;    margin-left: 5px;    text-decoration: underline;}.sf-error-toolbar .sf-toolbarreset a:hover {    text-decoration: none;}.sf-error-toolbar .sf-toolbarreset .sf-toolbar-icon {    float: left;    padding: 5px 0;    margin-right: 10px;}/***** Media query print: Do not print the Toolbar. *****/@media print {    .sf-toolbar {        display: none;    }}</style>
<script nonce="9f022b4a3849e57272c526ef20681cc0">
    let panel = function(token) {
        "use strict";
        let profilerStorageKey = 'symfony/panel/';
        let newToken = token;

        if (localStorage.getItem(profilerStorageKey + 'toolbar/displayState') == 'none')
        {
            document.getElementById('sfToolbarMainContent-' + newToken).style.display = 'none';
            document.getElementById('sfToolbarClearer-' + newToken).style.display = 'none';
            document.getElementById('sfMiniToolbar-' + newToken).style.display = 'block';
        } else {
            document.getElementById('sfToolbarMainContent-' + newToken).style.display = 'block';
            document.getElementById('sfToolbarClearer-' + newToken).style.display = 'block';
            document.getElementById('sfMiniToolbar-' + newToken).style.display = 'none';
        }

        let fn = {
            getPreference: function (name) {
                if (!window.localStorage) {
                    return null;
                }
                return localStorage.getItem(profilerStorageKey + name);
            },
            setPreference: function (name, value) {
                if (!window.localStorage) {
                    return null;
                }
                localStorage.setItem(profilerStorageKey + name, value);
            },
            closePanel: function (event) {
                event.preventDefault();
                let p = this.parentNode;
                p.style.display = 'none';
                (p.previousElementSibling || p.previousSibling).style.display = 'none';
                document.getElementById('sfMiniToolbar-' + newToken).style.display = 'block';
                fn.setPreference('toolbar/displayState', 'none');
            },
            openPanel: function (event) {
                event.preventDefault();
                let elem = this.parentNode;
                if (elem.style.display == 'none') {
                    document.getElementById('sfToolbarMainContent-' + newToken).style.display = 'none';
                    document.getElementById('sfToolbarClearer-' + newToken).style.display = 'none';
                    elem.style.display = 'block';
                } else {
                    document.getElementById('sfToolbarMainContent-' + newToken).style.display = 'block';
                    document.getElementById('sfToolbarClearer-' + newToken).style.display = 'block';
                    elem.style.display = 'none'
                }
                fn.setPreference('toolbar/displayState', 'block');
            }
        };
        document.getElementById("sfToolbarHideButton-" + token).addEventListener("click", fn.closePanel);
        document.getElementById("sfToolbarMiniToggler-" + token).addEventListener("click", fn.openPanel);
    };

    (function () {

        panel('{{ panel }}');

    })();

</script>