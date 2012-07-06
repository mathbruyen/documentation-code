Aria.classDefinition({
    $classpath: "tests.snippets.templates.WidgetBindings",
    $extends: "aria.jsunit.TestCase",

    $prototype: {

        testAsyncLoadTpl : function () {
            document.getElementById("TESTAREA").style.display="none";
            Aria.loadTemplate({
                div : "TESTAREA",
                classpath : "snippets.templates.widget_bindings.MyTemplate",
                data : {name:""}
            }, {
                fn : this.notifyTestEnd,
                scope : this
            });
        }

    }

});