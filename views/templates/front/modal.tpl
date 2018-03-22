<div class="modal fade" id="wimgdpr_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"
                    id="exampleModalLongTitle">{l s='WEBIMPACTO GENERAL DATA PROTECTION REGULATION'}</h5>
            </div>
            {*{assign var=cms_version_list value=""}*}
            {foreach from=$cmsList item=cms_version}
                <input class="hidden_cms" type="hidden" value="{$cms_version.id_gdpr_cms_version}"/>
                <div class="modal-body">
                    <b>{l s='Título'}: </b>{$cms_version.title}
                    <br/>
                    <b>{l s='Motivo de modificación'}: </b>{$cms_version.modification_reason_for_a_new}
                    <br/>
                    <input class="hidden_cms_content" type="hidden" value="{$cms_version.content|escape:"html"} "/>
                    <button type="button" onclick="showModalCms({$cms_version.id_gdpr_cms_version})"
                            class="btn">{l s='Ver contenido'}
                    </button>
                </div>
            {/foreach}
            <div class="modal-footer">
                <button type="button" onclick="acceptCms()" class="btn btn-primary">{l s='Aceptar'}
                </button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="wimgdpr_cms_modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body"></div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary"
                        onclick="$('#wimgdpr_cms_modal').modal('hide')">{l s='Cerrar'}
                </button>
            </div>
        </div>
    </div>
</div>

<script>var baseDir = "{$urls.base_url}";</script>