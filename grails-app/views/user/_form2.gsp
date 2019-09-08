<div class="page-wrapper bg-blue p-t-100 p-b-100 font-robo">
    <div class="wrapper wrapper--w680">
        <div class="card card-1">
            <div class="card-heading"></div>
            <div class="card-body">
                <h2 class="title">Registration Panel</h2>
                    <div class="input-group">
                        <label><g:message code="first.name"/> *</label>
                        <input class="input--style-1" type="text" placeholder="firstName" name="name"  value="${user?.firstName}">
                    </div>
                    <div class="row row-space">
                        <div class="col-2">
                            <div class="input-group">
                                <label><g:message code="birthdate"/></label>
                                <input class="input--style-1 js-datepicker" type="text" placeholder="birthdate" name="birthdate">
                                <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                            </div>
                        </div>
                    </div>

            </div>
        </div>
    </div>
</div>
