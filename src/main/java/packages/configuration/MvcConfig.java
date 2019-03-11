package packages.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MvcConfig implements WebMvcConfigurer {

    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/").setViewName("index");
        registry.addViewController("/index").setViewName("index");
        registry.addViewController("/login").setViewName("login");
        registry.addViewController("/legal").setViewName("legal");
        registry.addViewController("/course-editor").setViewName("course-editor");
        registry.addViewController("/dashboard").setViewName("dashboard");
        registry.addViewController("/whitelist").setViewName("whitelist");
    }

}
