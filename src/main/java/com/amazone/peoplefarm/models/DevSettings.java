package com.amazone.peoplefarm.models;

import javax.persistence.Embeddable;

@Embeddable
public class DevSettings {

    boolean mortal = true;

    public DevSettings() {
    }

    public boolean isMortal() {
        return mortal;
    }

    public void setMortal(boolean mortal) {
        this.mortal = mortal;
    }
}