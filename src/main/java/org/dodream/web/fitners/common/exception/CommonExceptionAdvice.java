package org.dodream.web.fitners.common.exception;

import lombok.extern.log4j.Log4j2;
import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
@Log4j2
public class CommonExceptionAdvice {

    @ExceptionHandler(Exception.class)//어떤 종류의 애가 발생하면 이것을 할거야?
    public String exceptAll(Exception ex, Model model){
        log.error(ex.getMessage());
        model.addAttribute("exception",ex);

        return "error_page";
    }

    @ExceptionHandler(NoHandlerFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public String handle404(NoHandlerFoundException ex){
        return "custom404";
    }

    @ExceptionHandler(ArithmeticException.class)
    public String exceptArithmetic(ArithmeticException ex, Model model){
        log.info("exception arithmetic");
        log.error(ex.getMessage());
        log.error(ex.getClass().getName());

        model.addAttribute("exception", ex);

        return "error_arithmetic_page";
    }

}