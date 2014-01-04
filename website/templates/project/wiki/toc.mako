<div class="osf-sidenav hidden-print" role="complementary">

    <ul class="nav bs-sidenav">

        <h4 style="margin-left: 10px;">Project Wiki Pages</h4>

        % for k in pages_current:
            <li>
                <a href="/${node['id']}/wiki/${k}/${node['url_params']}">${k}</a>
            </li>
        % endfor

        % if category == 'project':
            <hr />
            <h4 style="margin-left: 10px;">Component Wiki Pages</h4>

            % for child in toc:
                <li class="nav-header">

                    <a href="/${node['id']}/node/${child['id']}/wiki/home/${child['url_params']}">${child['title']} (${child['category']})</a>
                    <ul style="list-style-type: none;">
                        % for k in child['pages']:
                            % if k != 'home':
                                <li class="">
                                    <a href="/${node_id}/node/${child['id']}/wiki/${k}/${child['url_params']}">${k}</a>
                                </li>
                            % endif
                        % endfor
                    </ul>

                </li>
            % endfor

        % endif

    </ul>

</div>
